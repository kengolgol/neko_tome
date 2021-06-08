class RemoveIntroduceFromHosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :hosts, :introduce, :text
  end
end
