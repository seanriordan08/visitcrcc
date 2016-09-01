class Inquiry < ActiveRecord::Base

  validates :body, presence: true
  validates :email, presence: true

end

# == Schema Information
#
# Table name: inquiries
#
#  id             :integer          not null, primary key
#  email          :string(255)
#  registered     :boolean
#  media_origin   :string(255)      default("web_form")
#  tags           :string(255)
#  priority       :integer          default(0)
#  responded      :boolean          default(FALSE)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  helpful_rating :integer
#
