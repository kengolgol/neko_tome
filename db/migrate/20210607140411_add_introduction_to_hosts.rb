class AddIntroductionToHosts < ActiveRecord::Migration[6.0]
  def change
    add_column :hosts, :introduction, :text
  end
end
