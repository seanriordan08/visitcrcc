class AddDemographicTable < ActiveRecord::Migration
  def change
    create_table :life_group_demographics do |t|
      t.boolean :all_welcome
      t.boolean :singles
      t.boolean :unmarried_couples
      t.boolean :married_couples
      t.boolean :with_kids
      t.integer :life_group_id
      t.timestamps null: false
    end
  end
end
