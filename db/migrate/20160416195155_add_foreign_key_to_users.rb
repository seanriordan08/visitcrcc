class AddForeignKeyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :life_group_id, :integer
  end
end
