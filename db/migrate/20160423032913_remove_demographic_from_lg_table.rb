class RemoveDemographicFromLgTable < ActiveRecord::Migration
  def change
    remove_column :life_groups, :demographic
  end
end
