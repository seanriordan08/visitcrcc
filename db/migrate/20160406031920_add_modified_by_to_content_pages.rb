class AddModifiedByToContentPages < ActiveRecord::Migration
  def change
    add_column :welcome_contents, :last_modified_by, :string
    add_column :welcome_contents, :last_modified_date, :datetime
  end
end
