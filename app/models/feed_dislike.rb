class FeedDislike < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :feed
end
