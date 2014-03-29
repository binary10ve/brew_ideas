class CreateInitialStructure < ActiveRecord::Migration
  def change
  	 create_table :feeds do |t|
      t.text :message
	  t.integer :user_id
      t.timestamps	
    end

 create_table :feed_comments do |t|
      t.text :message
      t.integer :feed_id
	  t.integer :user_id
      t.timestamps	
    end


 create_table :feed_likes do |t|
      t.integer :feed_id
      t.integer :feed_comment_id
	  t.integer :user_id
      t.timestamps	
    end


 create_table :feed_dislikes do |t|
      t.integer :feed_id
      t.integer :feed_comment_id
	  t.integer :user_id
      t.timestamps	
    end


 create_table :ideas do |t|
      t.string :title
      t.text :description
      t.integer :feed_id
	    t.integer :user_id
      t.integer :view_counts
      t.integer :likes_counts
      t.integer :dislikes_counts
      t.timestamps	
    end


 create_table :idea_tags do |t|
      t.integer :tag_id
	  t.integer :idea_id
      t.timestamps	
    end


 create_table :tags do |t|
      t.string :name
      t.timestamps	
    end

  end
end
