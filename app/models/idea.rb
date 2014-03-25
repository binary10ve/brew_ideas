class Idea < ActiveRecord::Base
  attr_accessible :description, :title
  scope :popular
  scope :mine
  scope :recent, :order => "created_at desc"
  scope :search  
   scope :search, ->(query) { where("title like '%#{query}%' or description like '%#{query}%'") }


   def update_feeling(feeling, user_id)
   	f = Feeling.where(:idea_id => self.id,:user_id=> user_id ).first_or_initialize
   	f.liked = feeling == "liked"
   	f.save
   end
end
