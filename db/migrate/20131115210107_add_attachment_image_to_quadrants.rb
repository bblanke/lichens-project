class AddAttachmentImageToQuadrants < ActiveRecord::Migration
  def self.up
    change_table :quadrants do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :quadrants, :image
  end
end
