class RemoveHtmlContentFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :html_content
  end
end
