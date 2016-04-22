class ModifyLifeGroupStartEndTimes < ActiveRecord::Migration
  def change
    change_column :life_groups, :start_time, :string
    change_column :life_groups, :end_time, :string
  end
end
