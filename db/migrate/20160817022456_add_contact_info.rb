class AddContactInfo < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :primary_phone
      t.string :secondary_phone
      t.string :primary_email
      t.string :secondary_email
    end

    Contact.create(name: 'Info Desk', primary_phone: '720.295.7284', primary_email: 'info@visitcrcc.org')
  end
end
