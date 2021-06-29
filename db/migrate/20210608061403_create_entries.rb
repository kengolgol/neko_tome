class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.references :guest, foreign_keys: true
      t.references :host, foreign_keys: true
      t.references :room, foreign_keys: true
      t.timestamps
    end
  end
end
