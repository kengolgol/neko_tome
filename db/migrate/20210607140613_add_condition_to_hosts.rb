class AddConditionToHosts < ActiveRecord::Migration[6.0]
  def change
    add_column :hosts, :condition, :text
  end
end
