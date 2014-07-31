class CreateTrees < ActiveRecord::Migration
  def change
    create_table :trees do |t|
      t.integer :user_id
      t.date :date
      t.string :species
      t.integer :circum
      t.string :light
      t.decimal :lat, :null => false
      t.decimal :long, :null => false
      t.integer :droad
      t.integer :dwater
      t.integer :direction
      t.text :notes

      t.timestamps
    end
  end
end
