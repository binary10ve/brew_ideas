class CreatePost < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
      t.string :title
      t.text :description
	  t.string :post_type
	  t.integer :user_id
  	end
  end
end

