class ModifyLifeGroups < ActiveRecord::Migration
  def change
    remove_column :life_groups, :for_singles
    remove_column :life_groups, :for_singles_with_kids
    remove_column :life_groups, :for_marrieds_with_kids
    remove_column :life_groups, :for_marrieds
  end
end
