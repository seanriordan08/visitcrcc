class AddEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, :string, default: "Event Title", null: false
      t.text :description, :text
      t.datetime :start_time, :datetime
      t.datetime :end_time, :datetime

      t.timestamps null: false
    end

    create_table :users_events, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :event, index: true
    end
  end
end
