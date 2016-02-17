class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  #:lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  after_create :update_mailchimp


  ROLES = %w[admin staff member guest suspended banned]

  def full_name
    "#{self.first_name} #{self.last_name}"
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

end
