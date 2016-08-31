class WelcomeContent < ActiveRecord::Base

  def save_html_content(current_user, html_content)
    self.update(html_content: html_content, last_modified_by: current_user.full_name, last_modified_date: Time.current.utc.iso8601)
  end

end

# == Schema Information
#
# Table name: welcome_contents
#
#  id                 :integer          not null, primary key
#  page_name          :string(255)
#  html_content       :text(65535)
#  last_modified_by   :string(255)
#  last_modified_date :datetime
#
