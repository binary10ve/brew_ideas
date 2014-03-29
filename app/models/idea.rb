class Idea < ActiveRecord::Base
  attr_accessible :description, :title, :feed_id, :user_id
  scope :popular
  scope :mine
  scope :recent, :order => "created_at desc"
  scope :search  
  scope :search, ->(query) { where("title like '%#{query}%' or description like '%#{query}%'") }

  has_one :feed
  has_many :tags , through: :idea_tags

  after_create :create_feed
 


  def create_feed
  	feed = Feed.create_feed({idea: self})
  	self.feed_id = feed.id
  	self.save!
  end

end
