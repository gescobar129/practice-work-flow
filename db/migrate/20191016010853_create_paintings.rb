class CreatePaintings < ActiveRecord::Migration[5.2]
  def change
    create_table :paintings do |t|
      t.string :name
      t.integer :price
      t.belongs_to :artist, foreign_key: true
      t.belongs_to :gallery, foreign_key: true

      t.timestamps
    end
  end
end
