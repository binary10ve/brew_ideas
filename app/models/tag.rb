class Tag < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to idea
end
