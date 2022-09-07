class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :creator
      t.string :imageurl
      t.integer :like_count
      t.time :created_at
      t.integer :user_id
    end
  end
end
