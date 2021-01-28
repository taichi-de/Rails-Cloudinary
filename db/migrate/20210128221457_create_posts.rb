class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table "posts", force: :cascade do |t|
      t.bigint "user_id"
      t.string "title"
      t.text "content"
      t.integer "views"
      t.integer "likes"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.index ["user_id"], name: "index_posts_on_user_id"
    end
  end
end
