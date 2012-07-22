class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.references :user
      t.string :title
      t.text :text
      t.string :street
      t.integer :zip
      t.string :city
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
