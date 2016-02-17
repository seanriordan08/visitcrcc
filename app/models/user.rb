class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  #:lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  after_create :update_mailchimp

  extend MailchimpHelper

  ROLES = %w[admin staff member guest suspended banned]

  def full_name
    "#{self.first_name} #{self.last_name}"
  end


  private

  def update_mailchimp
    MailchimpHelper.register_user(self)
  end

end
