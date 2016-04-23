class AddForeignKeyToLifeGroups < ActiveRecord::Migration
  def change
    add_column :life_groups, :group_lead_id, :integer
  end
end
