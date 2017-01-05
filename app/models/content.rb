class Content < ActiveRecord::Base
  belongs_to :user
  belongs_to :place
end
  def change
    create_table :comments do |t|
# Add fields for fields we want to keep track of
      t.text :message
      t.string :rating

      t.integer :user_id
      t.integer :place_id
      t.timestamps
    end

# Indexing makes the look ups fast, you can either look up by just the user id or also the id and place
    add_index :comments, [:user_id, :place_id]
    add_index :comments, :place_id
  end
end
