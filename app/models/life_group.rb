class LifeGroup < ActiveRecord::Base

  has_one :life_group_demographic, dependent: :destroy
  has_many :users

  belongs_to :group_lead, class_name: 'User'

  accepts_nested_attributes_for :life_group_demographic

end
