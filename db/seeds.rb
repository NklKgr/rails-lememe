# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "...deleting all data"

# Seed data for a User
# User.create!(email: "email@email.com", password: "password")
Meme.destroy_all
Challenge.destroy_all
Community.destroy_all
User.destroy_all


# # # Seed data for a Product associated with the User
user = User.create!(
  email: "123456@web.de",
  password: "123456",
  username: "memeber01"
)

puts "...created a user"


# # # COMMUNITIES
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686045830/Le%20Meme/wagoners_sfb1sf.png")
cummunity = Community.create!(
  name: 'Le Wagon'
)
cummunity.photo.attach(io: file, filename: "#{cummunity.name}_logo.png", content_type: "image/png")
cummunity.save!

puts "...created a community"

# # # CHALLENGES
challenge = Challenge.create!(
  name: 'Batch_1216',
  community_id: cummunity.id
)
challenge.save

puts "...created a challenge"

# # # MEMES
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686043915/Le%20Meme/1685575227444_n4rrmn.jpg")
meme = Meme.create!(
  title: 'Meme 1',
  user: User.last,
  challenge: Challenge.last,
  score: 0
)
meme.photo.attach(io: file, filename: "#{meme.title}.png", content_type: "image/png")
meme.save

puts "...Meme 1 created"

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686043916/Le%20Meme/screenshot_20230531-075721_efgs6n.png")
meme = Meme.create!(
  title: 'Meme 2',
  user: User.last,
  challenge: Challenge.last,
  score: 0
)
meme.photo.attach(io: file, filename: "#{meme.title}.png", content_type: "image/png")
meme.save

puts "...Meme 2 created"


file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686043916/Le%20Meme/img_9852_sooh4a.jpg")
meme = Meme.create!(
  title: 'Meme 3',
  user: User.last,
  challenge: Challenge.last,
  score: 0
)
meme.photo.attach(io: file, filename: "#{meme.title}.png", content_type: "image/png")
meme.save

puts "...Meme 3 created"

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686043916/Le%20Meme/image-1_krlk9r.png")
meme = Meme.create!(
  title: 'Meme 4',
  user: User.last,
  challenge: Challenge.last,
  score: 0
)
meme.photo.attach(io: file, filename: "#{meme.title}.png", content_type: "image/png")
meme.save

puts "...Meme 4 created"

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686043915/Le%20Meme/image_ppetx2.png")
meme = Meme.create!(
  title: 'Meme 5',
  user: User.last,
  challenge: Challenge.last,
  score: 0
)
meme.photo.attach(io: file, filename: "#{meme.title}.png", content_type: "image/png")
meme.save

puts "...Meme 5 created"
