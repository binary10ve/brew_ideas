class Feed < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :idea
  has_one :feed_like
  has_one :feed_dislike
end
