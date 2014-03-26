class Idea < ActiveRecord::Base
  attr_accessible :description, :title
  scope :popular
  scope :mine
  scope :recent, :order => "created_at desc"
  scope :search  
   scope :search, ->(query) { where("title like '%#{query}%' or description like '%#{query}%'") }

  has_one :feed
  has_many :tags , through: :idea_tags
end
