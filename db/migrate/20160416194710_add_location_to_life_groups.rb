class AddLocationToLifeGroups < ActiveRecord::Migration
  def change
    add_column :life_groups, :location, :string
  end
end
