class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :spot
      t.references :user
      t.integer :ground, :default => 0
      t.integer :water, :default => 0
      t.integer :clean, :default => 0
      t.integer :play, :default => 0

      t.timestamps
    end
    add_index :ratings, :spot_id
    add_index :ratings, :user_id
  end
end
