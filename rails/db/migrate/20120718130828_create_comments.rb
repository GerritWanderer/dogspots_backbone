class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :spot
      t.references :user
      t.text :text

      t.timestamps
    end
    add_index :comments, :spot_id
    add_index :comments, :user_id
  end
end
