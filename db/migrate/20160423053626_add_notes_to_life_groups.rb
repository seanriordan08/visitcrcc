class AddNotesToLifeGroups < ActiveRecord::Migration
  def change
    add_column :life_groups, :notes, :string
  end
end
