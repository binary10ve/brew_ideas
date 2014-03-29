class Tag < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name
  belongs_to :idea
end
