class AddPageContents < ActiveRecord::Migration
  def change
    create_table(:welcome_contents) do |t|
      t.text :html_content, default: ""
    end
  end
end
