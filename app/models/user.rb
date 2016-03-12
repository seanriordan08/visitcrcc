class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  #:lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  validates :first_name, :last_name, :gender, presence: true

  has_one :avatar, dependent: :destroy
  has_and_belongs_to_many :events

  after_create :update_mailchimp
  after_create :create_avatar
  before_save :normalize_names

  accepts_nested_attributes_for :avatar


  ROLES = %w[admin staff member guest suspended banned]

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def normalize_names
    self.tap do |u|
      u.first_name = u.first_name.strip.downcase.titleize
      u.last_name = u.last_name.strip.downcase.titleize
      u.role_description = u.role_description.strip.downcase.titleize
    end
  end

  def admin?
    self.role == 'admin'
  end

  private

  def update_mailchimp
    begin
      gibbon = Gibbon::Request.new(api_key: ENV['MAILCHIMP_API_KEY'])
      gibbon.timeout = 10

      gibbon.lists(ENV['MAILCHIMP_LISTID_MASTER']).members.create(
        body: {
          email_address: "#{self.email}", status: "subscribed", merge_fields: {
            EMAIL: "#{self.email}",
            FNAME: "#{self.first_name}",
            LNAME: "#{self.last_name}",
            GENDER: "#{self.gender}"
          }
        }
      )
      Rails.logger.debug "**** Created MailChimp Contact #{self.email}"
    rescue
      Rails.logger.debug "**** MailChimp Contact #{self.email} ALREADY EXISTS!"
    end
  end

  def create_avatar
    Avatar.create(user_id: self.id, face: 'Face-1', hair: 'hair-black', eyes: 'eyes-blue-green', skin: 'skin-dark')
  end

end
