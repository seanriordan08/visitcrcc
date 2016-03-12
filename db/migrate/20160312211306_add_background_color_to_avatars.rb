class AddBackgroundColorToAvatars < ActiveRecord::Migration
  def change
    add_column :avatars, :background_color, :string, default: '#78B5CA'
  end
end
