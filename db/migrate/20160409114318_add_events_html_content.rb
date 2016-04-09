class AddEventsHtmlContent < ActiveRecord::Migration
  def change
    add_column :events, :html_content, :text
  end
end
