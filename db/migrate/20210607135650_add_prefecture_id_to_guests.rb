class AddPrefectureIdToGuests < ActiveRecord::Migration[6.0]
  def change
    add_column :guests, :prefecture_id, :integer
  end
end
