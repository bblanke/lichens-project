class CreateQuadrants < ActiveRecord::Migration
  def change
    create_table :quadrants do |t|
      t.integer :tree_id
      t.integer :qnum
      t.text :notes

      t.timestamps
    end
  end
end
