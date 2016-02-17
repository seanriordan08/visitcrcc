class User < ActiveRecord::Base
  extend MailchimpHelper

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
    gibbon = Gibbon::Request.new(api_key: ENV['MAILCHIMP_API_KEY'])
    gibbon.timeout = 10

    gibbon.lists(ENV['MAILCHIMP_LISTID_MASTER']).members.create(
      body: {
        email_address: "#{self.email}", status: "subscribed", merge_fields: {
          EMAIL: "#{self.email}",
          FNAME: "#{self.first_name}",
          LNAME: "#{self.last_name}"
        }
      }
    )
  end

end
