class AddPrefectureIdToHosts < ActiveRecord::Migration[6.0]
  def change
    add_column :hosts, :prefecture_id, :integer
  end
end
