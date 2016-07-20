class AddForeignKeyToDemo < ActiveRecord::Migration
  def change
    add_foreign_key :life_group_demographics, :life_groups
  end
end
