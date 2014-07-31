class CreateLichens < ActiveRecord::Migration
  def change
    create_table :lichens do |t|
      t.integer :quadrant_id
      t.string :species
      t.string :pcover
      t.string :growth
      t.string :ascomata
      t.string :issored
      t.string :cyano

      t.timestamps
    end
  end
end
