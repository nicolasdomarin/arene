class AddAttachmentDocToFichiers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :fichiers do |t|
      t.attachment :doc
    end
  end

  def self.down
    remove_attachment :fichiers, :doc
  end
end
