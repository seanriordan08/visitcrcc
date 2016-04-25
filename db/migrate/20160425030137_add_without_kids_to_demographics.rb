class AddWithoutKidsToDemographics < ActiveRecord::Migration
  def change
    add_column :life_group_demographics, :without_kids, :boolean
    change_column :life_group_demographics, :all_welcome, :boolean
    change_column :life_group_demographics, :unmarried_couples, :boolean
    change_column :life_group_demographics, :married_couples, :boolean
    change_column :life_group_demographics, :with_kids, :boolean
  end
end
