class Courses < ActiveRecord::Migration[5.2]
  def change
  	create_table "courses", force: :cascade do |t|
  		t.string "title"
  		t.text "description"
  		t.decimal "cost"
  		t.integer "user_id"
  		t.datetime "created_at", null: :false
  		t.datetime "updated_at", null: :false
  		t.string "image"
  		t.index ["user_id"], name: "index_courses_on_user_id"
  	end	
  end
end
