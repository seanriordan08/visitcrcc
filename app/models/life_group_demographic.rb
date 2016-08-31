class LifeGroupDemographic < ActiveRecord::Base

  belongs_to :life_groups

end

# == Schema Information
#
# Table name: life_group_demographics
#
#  id                :integer          not null, primary key
#  all_welcome       :boolean
#  singles           :boolean
#  unmarried_couples :boolean
#  married_couples   :boolean
#  with_kids         :boolean
#  life_group_id     :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  without_kids      :boolean
#
