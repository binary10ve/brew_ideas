class CreateComments < ActiveRecord::Migration
  def change
  	create_table :comments do |t|
  		t.integer :post_id
		t.text :description
		t.integer :user_id
  	end
  end
end
