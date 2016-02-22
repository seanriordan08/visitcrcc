class AddEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, default: "Event Title", null: false
      t.text :description
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps null: false
    end

    create_table :users_events, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :event, index: true
    end
  end
end
