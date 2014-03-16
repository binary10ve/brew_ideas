class CreateIdeaChoices < ActiveRecord::Migration
  def change
  	create_table :idea_choices do |t|
  		t.integer :idea_id 
		t.string :title
	end
  end

end
