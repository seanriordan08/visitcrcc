class LifeGroup < ActiveRecord::Base

  has_many :users
  has_one :life_group_demographic, dependent: :destroy

  accepts_nested_attributes_for :life_group_demographic

end
