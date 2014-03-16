class CreateUserIdeaChoices < ActiveRecord::Migration
  def change
  	create_table :user_idea_choices do |t|
  		t.integer :user_id
		t.integer :idea_id
		t.integer :idea_choice_id
		t.text :commment
	end
  end

end
