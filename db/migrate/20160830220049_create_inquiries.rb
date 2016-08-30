class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.string :email
      t.boolean :registered
      t.string :media_origin, default: 'web_form'
      t.string :tags
      t.integer :priority, default: 0
      t.boolean :responded, default: false
      t.timestamps null: false
      t.integer :helpful_rating
    end
  end
end
