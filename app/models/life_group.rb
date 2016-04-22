class LifeGroup < ActiveRecord::Base

  has_many :users
  has_many :life_group_demographics, dependent: :destroy

  accepts_nested_attributes_for :life_group_demographics

end
