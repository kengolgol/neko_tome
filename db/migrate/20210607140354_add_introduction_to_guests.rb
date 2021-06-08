class AddIntroductionToGuests < ActiveRecord::Migration[6.0]
  def change
    add_column :guests, :introduction, :text
  end
end
