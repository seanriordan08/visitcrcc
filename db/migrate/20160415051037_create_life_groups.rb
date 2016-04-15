class CreateLifeGroups < ActiveRecord::Migration
  def change
    create_table :life_groups do |t|
      t.string :name
      t.boolean :for_singles
      t.boolean :for_singles_with_kids
      t.boolean :for_marrieds
      t.boolean :for_marrieds_with_kids
      t.date :date
      t.time :start_time
      t.time :end_time
      t.timestamps null: false
    end
  end
end
