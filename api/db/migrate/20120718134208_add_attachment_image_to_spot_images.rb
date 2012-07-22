class AddAttachmentImageToSpotImages < ActiveRecord::Migration
  def self.up
    change_table :spot_images do |t|
      t.has_attached_file :image
    end
  end

  def self.down
    drop_attached_file :spot_images, :image
  end
end
