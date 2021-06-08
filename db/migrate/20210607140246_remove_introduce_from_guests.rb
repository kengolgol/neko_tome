class RemoveIntroduceFromGuests < ActiveRecord::Migration[6.0]
  def change
    remove_column :guests, :introduce, :text
  end
end
