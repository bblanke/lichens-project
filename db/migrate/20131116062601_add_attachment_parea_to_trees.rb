class AddAttachmentPareaToTrees < ActiveRecord::Migration
  def self.up
    change_table :trees do |t|
      t.attachment :parea
    end
  end

  def self.down
    drop_attached_file :trees, :parea
  end
end
