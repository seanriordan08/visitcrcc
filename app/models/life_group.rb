class LifeGroup < ActiveRecord::Base

  has_one :life_group_demographic, dependent: :destroy
  has_many :users

  belongs_to :group_lead, class_name: 'User'

  accepts_nested_attributes_for :life_group_demographic

  DEMOGRAPHIC_OPTIONS = [
    ['Choose demographic'],
    ['All Welcome','all_welcome'],
    ['Singles','singles'],
    ['Couples (Unmarried)','unmarried_couples'],
    ['Married Couples','married_couples'],
    ['with Kids','with_kids'],
    ['without Kids','without_kids']
  ]

end

# == Schema Information
#
# Table name: life_groups
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  day           :string(255)
#  start_time    :string(255)
#  end_time      :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  location      :string(255)
#  group_lead_id :integer
#  notes         :string(255)
#
