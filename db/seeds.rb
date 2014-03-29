# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



#Create users

users = ["krumasta@gmail.com"]

users.each do |user|
	User.create!(:email=> user ,:password=> 'temp1234')
end

#Create default tags

tags = ["Animals", "Architecture", "Arts", "Cars-Motorcycles", "Celebration-Events", "Celebrities", "Design", "Education", "Film-Music-Books", 
	    "Food-Drink", "Gardening", "Geek", "Hair-Beauty", "Health-Fitness", "History", "Hobbies-Crafts", "Home-Decor", "Humour", 
	    "Illustrations-Posters", "Kids", "Men's-Fashion", "Outdoors", "Photography", "Products", "Quotes", "Science-Nature",
	    "Sports", "Tattoos", "Technology", "Travel", "Weddings", "Women's-Fashion"]


tags.each do |tag|
	Tag.create!(name: tag)
end

ideas = ["The camp laptop and smartphone", "Electornic Class Boards", "Extract archives with one command",
         "Fixing self opening zipper for jeans", "Marbleized Easter Eggs", "AppleTv replacement Raspberry Pi",
         "Unified Clouspace Service App", "Spooned Wall Hook", "DIY: Opaque Striped Vase", "DIY - Garden In A Book",
         "Infographic - The best cake ever", "3 Trick to get rid of files", "Selfmade mackup brush holder", 
         "Old table with colored stripes", "Pencil holder build out of cassette", "Nice and creative hand painiting",
      	 "Children feed butterfly artwork", "Water balloon candlelight", "How to cleaver cook with firewood"]

user = User.first.id
ideas.each do |idea|
	Idea.create!(title: idea, description: idea, user_id: user)
end
