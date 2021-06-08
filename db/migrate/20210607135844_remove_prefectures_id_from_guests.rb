class RemovePrefecturesIdFromGuests < ActiveRecord::Migration[6.0]
  def change
    remove_column :guests, :prefectures_id, :integer
  end
end
