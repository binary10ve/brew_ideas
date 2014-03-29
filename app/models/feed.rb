class Feed < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :user_id, :idea_id
  belongs_to :idea
  has_one :feed_like
  has_one :feed_dislike

  def self.create_feed(options)
  	Feed.create!(user_id: options[:idea].user_id)
  end
end
