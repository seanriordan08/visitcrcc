class Avatar < ActiveRecord::Base
  belongs_to :user
end

# == Schema Information
#
# Table name: avatars
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  face             :string(255)
#  hair             :string(255)
#  eyes             :string(255)
#  skin             :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  background_color :string(255)      default("#78B5CA")
#
