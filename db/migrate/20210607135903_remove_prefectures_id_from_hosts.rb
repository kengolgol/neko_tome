class RemovePrefecturesIdFromHosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :hosts, :prefectures_id, :integer
  end
end
