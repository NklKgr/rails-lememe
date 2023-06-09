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
Membership.destroy_all
Community.destroy_all
User.destroy_all


# # # Seed data for a Product associated with the User

Meme.destroy_all
Challenge.destroy_all
Membership.destroy_all
Community.destroy_all
User.destroy_all
Vote.destroy_all


# # # Seed data for a Product associated with the User
user = User.create!(
  email: "123456@web.de",
  password: "123456",
  username: "memeber01"
)

puts "...created user: #{user.username}"


user2 = User.create!(
  email: "123456002@web.de",
  password: "123456",
  username: "memeber02"
)

puts "...created user: #{user2.username}"


# # # COMMUNITIES
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686045830/Le%20Meme/wagoners_sfb1sf.png")
cummunity = Community.create!(
  name: 'Le Wagon',
  description: 'Le Wagon is a coding bootcamp that teaches students to develop web applications from scratch. Our cutting-edge curriculum and world-class teachers give students all the skills and tools needed to kick-start their tech career, land a job as software developers or product managers, or launch their own startup.'
)
cummunity.photo.attach(io: file, filename: "#{cummunity.name}_logo.png", content_type: "image/png")
cummunity.save!

#####

puts "...created cummunity: #{cummunity.name}"

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230459/Le%20Meme/download_peprag.jpg")
cummunity01 = Community.create!(
  name: 'Zoo Berlin',
  description: 'Zoo Berlin is the oldest and best-known zoo in Germany. Opened in 1844 it covers 35 hectares (86.5 acres) and is located in Berlin\'s Tiergarten. With about 1,380 different species and over 20,200 animals the zoo presents one of the most comprehensive collection of species in the world.'
)
cummunity01.photo.attach(io: file, filename: "#{cummunity01.name}_logo.png", content_type: "image/png")
cummunity01.save!

#####

puts "...created cummunity: #{cummunity01.name}"

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
cummunity02 = Community.create!(
  name: 'TU Berlin',
  description: 'The Technische Universität Berlin, known as TU Berlin for short and unofficially as the Technical University of Berlin or Berlin Institute of Technology, is a research university located in Berlin, Germany.'
)
cummunity02.photo.attach(io: file, filename: "#{cummunity02.name}_logo.png", content_type: "image/png")
cummunity02.save!

puts "...created cummunity: #{cummunity02.name}"

# # # CHALLENGES
challenge = Challenge.create!(
  name: 'Batch_1216',
  community_id: cummunity.id
)
challenge.save

puts "...created challenge for #{cummunity.name} - #{challenge.name}"

#####

challenge01 = Challenge.create!(
  name: 'Batch_100',
  community_id: cummunity.id
)
challenge01.save

puts "...created challenge for #{cummunity.name} - #{challenge01.name}"

#####

challenge02 = Challenge.create!(
  name: 'Smiling Pandas',
  community_id: cummunity01.id
)
challenge02.save

puts "...created challenge for #{cummunity02.name} - #{challenge02.name}"

####

challenge03 = Challenge.create!(
  name: 'Thinking Memes',
  community_id: cummunity02.id
)
challenge03.save

puts "...created challenge for #{cummunity02.name} - #{challenge03.name}"

# # # Memmbership
membership = Membership.create!(
  user: User.first,
  community: Community.last
)
membership.save

puts "...created a memebership for #{cummunity.name} with user: #{user.username}"

####

membership01 = Membership.create!(
  user_id: user.id,
  community_id: cummunity01.id
)
membership01.save

puts "...created a memebership for #{cummunity01.name} with user: #{user.username}"

####

membership02 = Membership.create!(
  user_id: user2.id,
  community_id: cummunity02.id
)
membership02.save

puts "...created a memebership for #{cummunity02.name} with user: #{user.username}"

# # # MEMES
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686043915/Le%20Meme/1685575227444_n4rrmn.jpg")
meme = Meme.create!(
  title: 'Meme 1',
  user: user,
  challenge: challenge,
  score: 0
)
meme.photo.attach(io: file, filename: "#{meme.title}.png", content_type: "image/png")
meme.save

puts "...Meme 1 created for #{meme.challenge.name}"

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686043916/Le%20Meme/screenshot_20230531-075721_efgs6n.png")
meme = Meme.create!(
  title: 'Meme 2',
  user: user,
  challenge: challenge,
  score: 0
)
meme.photo.attach(io: file, filename: "#{meme.title}.png", content_type: "image/png")
meme.save

puts "...Meme 2 created for #{meme.challenge.name}"


file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686043916/Le%20Meme/img_9852_sooh4a.jpg")
meme = Meme.create!(
  title: 'Meme 3',
  user: user,
  challenge: challenge,
  score: 0
)
meme.photo.attach(io: file, filename: "#{meme.title}.png", content_type: "image/png")
meme.save

puts "...Meme 3 created for #{meme.challenge.name}"

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686043916/Le%20Meme/image-1_krlk9r.png")
meme = Meme.create!(
  title: 'Meme 4',
  user: user,
  challenge: challenge,
  score: 0
)
meme.photo.attach(io: file, filename: "#{meme.title}.png", content_type: "image/png")
meme.save

puts "...Meme 4 created for #{meme.challenge.name}"

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686043915/Le%20Meme/image_ppetx2.png")
meme = Meme.create!(
  title: 'Meme 5',
  user: user,
  challenge: challenge,
  score: 0
)
meme.photo.attach(io: file, filename: "#{meme.title}.png", content_type: "image/png")
meme.save

puts "...Meme 5 created for #{challenge.name}"


##### Pandas


file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686231978/Le%20Meme/images_cy4nh5.jpg")
meme = Meme.create!(
  title: 'Panda 1',
  user: user,
  challenge: challenge02,
  score: 0
)
meme.photo.attach(io: file, filename: "#{meme.title}.png", content_type: "image/png")
meme.save

puts "...Meme 1 created for #{meme.challenge.name}"

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686231978/Le%20Meme/9499b15d93f71bf0110be65564c21fc7_soxkjx.jpg")
meme = Meme.create!(
  title: 'Panda 2',
  user: user,
  challenge: challenge02,
  score: 0
)
meme.photo.attach(io: file, filename: "#{meme.title}.png", content_type: "image/png")
meme.save

puts "...Meme 2 created for #{meme.challenge.name}"


file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686231978/Le%20Meme/Assassin-Panda-Stalks-His-Prey-581x800_v6ejn0.jpg")
meme = Meme.create!(
  title: 'Panda 3',
  user: user,
  challenge: challenge02,
  score: 0
)
meme.photo.attach(io: file, filename: "#{meme.title}.png", content_type: "image/png")
meme.save

puts "...Meme 3 created for #{meme.challenge.name}"

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686231978/Le%20Meme/panda-darth-panda-finds-your-lack-of-faith-disturbing-guickrmemecom_yyhaf9.jpg")
meme = Meme.create!(
  title: 'Panda 4',
  user: user,
  challenge: challenge02,
  score: 0
)
meme.photo.attach(io: file, filename: "#{meme.title}.png", content_type: "image/png")
meme.save

puts "...Meme 4 created for #{meme.challenge.name}"

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686231978/Le%20Meme/panda-when-you-kindawant-abs-but-you-kindawanna-eat-17-donuts-and3-large-pizzas_iby9ns.jpg")
meme = Meme.create!(
  title: 'Panda 5',
  user: user,
  challenge: challenge02,
  score: 0
)
meme.photo.attach(io: file, filename: "#{meme.title}.png", content_type: "image/png")
meme.save

puts "...Meme 5 created for #{challenge.name}"

##### TU

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686234241/Le%20Meme/professor-attendance-isnt-mandatory-memes_er3d8o.jpg")
meme = Meme.create!(
  title: 'TU 1',
  user: user2,
  challenge: challenge03,
  score: 0
)
meme.photo.attach(io: file, filename: "#{meme.title}.png", content_type: "image/png")
meme.save

puts "...Meme 1 created for #{meme.challenge.name}"

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686234241/Le%20Meme/e549a0045e1ea90c0f33f6e1f583309b_fkplui.jpg")
meme = Meme.create!(
  title: 'TU 2',
  user: user2,
  challenge: challenge03,
  score: 0
)
meme.photo.attach(io: file, filename: "#{meme.title}.png", content_type: "image/png")
meme.save

puts "...Meme 2 created for #{meme.challenge.name}"


file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686234241/Le%20Meme/sub-buzz-3415-1488941815-2_irixnl.webp")
meme = Meme.create!(
  title: 'TU 3',
  user: user2,
  challenge: challenge03,
  score: 0
)
meme.photo.attach(io: file, filename: "#{meme.title}.png", content_type: "image/png")
meme.save

puts "...Meme 3 created for #{meme.challenge.name}"

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686234241/Le%20Meme/2017-04-07-meme-5_mosvla.jpg")
meme = Meme.create!(
  title: 'TU 4',
  user: user2,
  challenge: challenge03,
  score: 0
)
meme.photo.attach(io: file, filename: "#{meme.title}.png", content_type: "image/png")
meme.save

puts "...Meme 4 created for #{meme.challenge.name}"

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686234241/Le%20Meme/1513252_411549335637089_8592911281121757959_n_h42eiq.webp")
meme = Meme.create!(
  title: 'TU 5',
  user: user2,
  challenge: challenge03,
  score: 0
)
meme.photo.attach(io: file, filename: "#{meme.title}.png", content_type: "image/png")
meme.save

puts "...Meme 5 created for #{meme.challenge.name}"
