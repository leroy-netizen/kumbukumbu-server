
ActiveRecord::Schema.define(version: 2022_09_07_211018) do

  create_table "comments", force: :cascade do |t|
    t.integer "post_id"
    t.integer "user_id"
    t.string "comment_content"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "creator"
    t.string "imageurl"
    t.integer "like_count"
    t.time "created_at"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password"
    t.time "created_at"
  end

end
