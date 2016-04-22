class ModifyLifeGroupDate < ActiveRecord::Migration
  def change
    rename_column :life_groups, :date, :day
    change_column :life_groups, :day, :string
  end
end
