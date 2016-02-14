class AddFirstLastname < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string, default: "John or Jane"
    add_column :users, :last_name, :string, default: "Doe"
  end
end
