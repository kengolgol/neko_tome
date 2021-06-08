class RemoveConditionsFromHosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :hosts, :conditions, :text
  end
end
