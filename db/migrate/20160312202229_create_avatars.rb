class CreateAvatars < ActiveRecord::Migration
  def change
    create_table :avatars do |t|
      t.integer :user_id
      t.string :face
      t.string :hair
      t.string :eyes
      t.string :skin

      t.timestamps null: false
    end

    users = User.includes(:avatar).where(avatars: { user_id: nil })
    users.each do |u|
      u.build_avatar(face: 'Face-1', hair: 'hair-black', eyes: 'eyes-blue-green', skin: 'skin-dark')
      u.save
    end

  end
end
