class AddPostalCodeToHosts < ActiveRecord::Migration[6.0]
  def change
    add_column :hosts, :postal_code, :string
  end
end
