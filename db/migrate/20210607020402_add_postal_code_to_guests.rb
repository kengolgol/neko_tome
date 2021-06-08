class AddPostalCodeToGuests < ActiveRecord::Migration[6.0]
  def change
    add_column :guests, :postal_code, :string
  end
end
