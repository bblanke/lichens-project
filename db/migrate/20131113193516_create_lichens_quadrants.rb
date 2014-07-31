class CreateLichensQuadrants < ActiveRecord::Migration
  def change
      create_table :lichens_quadrants, :id => false do |t|
        t.references :lichen, :null => false
        t.references :quadrant, :null => false
      end
  end
end
