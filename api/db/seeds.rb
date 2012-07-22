# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

rand(15).times do
  user = User.new
  user.name = Faker::Internet.user_name
  user.email = Faker::Internet.email
  user.save!
  
  rand(5).times do
    spot = user.spots.build
    spot.title = Faker::Name.name
    spot.text = Faker::Lorem.paragraph
    spot.street = Faker::Address.street_name
    spot.zip = Faker::Address.zip
    spot.city = Faker::Address.city
    spot.save!

    rating = spot.ratings.build({:user_id => user.id})
    rating.ground = rand(5)
    rating.water = rand(5)
    rating.clean = rand(5)
    rating.play = rand(5)
    rating.save!
  end

  rand(3).times do
  	spot = Spot.all.shuffle.first
    rating = spot.ratings.build({:user_id => user.id})
    rating.ground = rand(5)
    rating.water = rand(5)
    rating.clean = rand(5)
    rating.play = rand(5)
    rating.save!

    rand(2).times do
      comment = spot.comments.build({:user_id => user.id})
      comment.text = Faker::Lorem.paragraph
      comment.save!
    end
  end
end