class AddModifiedDateToEvents < ActiveRecord::Migration
  def change
    add_column :events, :last_modified_by, :string
    add_column :events, :last_modified_date, :datetime
  end
end
