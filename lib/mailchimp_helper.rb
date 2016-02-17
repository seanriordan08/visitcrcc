module MailchimpHelper

  def self.register_user(user)
    gibbon = Gibbon::Request.new(api_key: ENV['MAILCHIMP_API_KEY'])
    gibbon.timeout = 10

    gibbon.lists(ENV['MAILCHIMP_LISTID_MASTER']).members.create(
      body: {
        email_address: "#{user.email}", status: "subscribed", merge_fields: {
          EMAIL: "#{user.email}",
          FNAME: "#{user.first_name}",
          LNAME: "#{user.last_name}"
        }
      }
    )
  end

end