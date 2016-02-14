class AddEmailElection < ActiveRecord::Migration
  def change
    add_column :users, :send_emails, :boolean, default: true
    add_column :users, :gender, :string, default: 'male'
  end
end
