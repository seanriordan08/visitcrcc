class WelcomeContent < ActiveRecord::Base

  def save_html_content(html_content)
    self.update(html_content: html_content)
  end

end
