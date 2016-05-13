class ModifyPublishEvent < ActiveRecord::Migration
  def change
    rename_column :events, :publish, :active
  end
end
