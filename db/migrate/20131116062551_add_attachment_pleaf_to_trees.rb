class AddAttachmentPleafToTrees < ActiveRecord::Migration
  def self.up
    change_table :trees do |t|
      t.attachment :pleaf
    end
  end

  def self.down
    drop_attached_file :trees, :pleaf
  end
end
