class AddDemographicToLifeGroups < ActiveRecord::Migration
  def change
    add_column :life_groups, :demographic, :string
  end
end
