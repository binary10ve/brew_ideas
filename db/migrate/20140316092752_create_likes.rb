class CreateLikes < ActiveRecord::Migration
  def change
  	create_table :likeable do |t|
  		t.integer :idea_id
 		t.integer :user_id
 		t.integer :comment_id
  	end
  end
end
