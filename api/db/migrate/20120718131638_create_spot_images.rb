class CreateSpotImages < ActiveRecord::Migration
  def change
    create_table :spot_images do |t|
      t.references :spot
      t.references :user
      t.timestamps
    end
    add_index :spot_images, :spot_id
  end
end
