class AddAttachmentPtreeToTrees < ActiveRecord::Migration
  def self.up
    change_table :trees do |t|
      t.attachment :ptree
    end
  end

  def self.down
    drop_attached_file :trees, :ptree
  end
end
