# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "...deleting all data"


Meme.destroy_all
Challenge.destroy_all
Membership.destroy_all
Community.destroy_all
User.destroy_all
Vote.destroy_all
Comment.destroy_all


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
community = Community.create!(
  name: 'Le Wagon',
  description: 'Le Wagon is a coding bootcamp that teaches students to develop web applications from scratch. Our cutting-edge curriculum and world-class teachers give students all the skills and tools needed to kick-start their tech career, land a job as software developers or product managers, or launch their own startup.',
  user: user
)
community.photo.attach(io: file, filename: "#{community.name}_logo.png", content_type: "image/png")
community.save!

#####

puts "...created community: #{community.name}"

#####

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230459/Le%20Meme/download_peprag.jpg")
community01 = Community.create!(
  name: 'Zoo Berlin',
  description: 'Zoo Berlin is the oldest and best-known zoo in Germany. Opened in 1844 it covers 35 hectares (86.5 acres) and is located in Berlin\'s Tiergarten. With about 1,380 different species and over 20,200 animals the zoo presents one of the most comprehensive collection of species in the world.',
  user: user
)
community01.photo.attach(io: file, filename: "#{community01.name}_logo.png", content_type: "image/png")
community01.save!

#####

puts "...created community: #{community01.name}"

#####

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community02 = Community.create!(
  name: 'TU Berlin',
  description: 'The Technische Universität Berlin, known as TU Berlin for short and unofficially as the Technical University of Berlin or Berlin Institute of Technology, is a research university located in Berlin, Germany.',
  user: user
)
community02.photo.attach(io: file, filename: "#{community02.name}_logo.png", content_type: "image/png")
community02.save!

puts "...created community: #{community02.name}"

#####

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community03 = Community.create!(
  name: 'Beats Berlin',
  description: 'Perlen aus Deep & Organic House, Chill Electronica und Indie Dance. Englische News. Der perfekte Soundtrack für die Generation Nachhaltig.',
  user: user
)
community03.photo.attach(io: file, filename: "#{community03.name}_logo.png", content_type: "image/png")
community03.save!

puts "...created cummunity: #{community03.name}"

#####

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community04 = Community.create!(
  name: 'Soho House',
  description: 'Soho House is a global private members social club. The original location is at 40 Greek Street, Soho, London. The company now operates clubs, hotels and venues around the world, and in 2015 changed from SOHO House Group to Soho House & Co.',
  user: user2
)
community04.photo.attach(io: file, filename: "#{community04.name}_logo.png", content_type: "image/png")
community04.save!

puts "...created cummunity: #{community04.name}"

#####

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community05 = Community.create!(
  name: 'Dance Academy',
  description: 'It is never too late to start dancing or to start again after a long break. Dancing is a great way to meet new people, have fun and of course stay in shape. You will gain a range of positive health benefits, including better flexibility, strength and stamina, and reduced stress. At BDI, we understand that dance doesn’t just help your physical well-being, it can help your self-confidence and your emotional well-being. It just makes you feel like smiling!',
  user: user2
)
community05.photo.attach(io: file, filename: "#{community05.name}_logo.png", content_type: "image/png")
community05.save!

puts "...created cummunity: #{community05.name}"

#####

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community06 = Community.create!(
  name: 'Volleyball Club',
  description: '
  Das Bild zeigt die Umrisse von Berlin. In der Fläche von der Stadt sind die Umrisse eines Volleyballs zu sehen. Desweiteren ist in der Mitte das Logo von VolleyballFREAK
  Berlin spielt Volleyball
  Berlin ist Hauptstadt und Bundesland von Deutschland zugleich. Auf die rund 3,4 Mio Einwohner Berlins kommen aber nur ca. 185 aktive Volleyballmannschaften. Damit befindet sich der Volleyball Verband Berlin (VVB) von der Größe her innerhalb des Deutschen Volleyball Verbandes (DVV)im hinteren Feld der Landesverbände. Nichts destotrotz stellt Berlin mit BERLIN RECYCLING Volleys und dem VC Olympia Berlin (Damen und Herren) gleich 3 Teams der Volleyball Bundesliga (VBL).',
  user: user2
)
community06.photo.attach(io: file, filename: "#{community06.name}_logo.png", content_type: "image/png")
community06.save!

puts "...created cummunity: #{community06.name}"

#####

file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community07 = Community.create!(
  name: 'Art Affairs',
  description: '
  The BERLIN ART INSTITUTE is an independent art school, international artist residency & arts incubator.',
  user: user2
)
community07.photo.attach(io: file, filename: "#{community07.name}_logo.png", content_type: "image/png")
community07.save!

puts "...created cummunity: #{community07.name}"


# # # CHALLENGES
challenge = Challenge.create!(
  name: 'Batch_1216',
  community_id: community.id
)
challenge.save

puts "...created challenge for #{community.name} - #{challenge.name}"

#####

challenge01 = Challenge.create!(
  name: 'Batch_100',
  community_id: community.id
)
challenge01.save

puts "...created challenge for #{community.name} - #{challenge01.name}"

#####

challenge02 = Challenge.create!(
  name: 'Smiling Pandas',
  community_id: community01.id
)
challenge02.save

puts "...created challenge for #{community02.name} - #{challenge02.name}"

####

challenge03 = Challenge.create!(
  name: 'Thinking Memes',
  community_id: community02.id
)
challenge03.save

puts "...created challenge for #{community02.name} - #{challenge03.name}"

# # # Membership
membership = Membership.create!(
  user_id: user2.id,
  community_id: community.id,
  status: 'approved'
)
membership.save

puts "...created a memebership for #{community.name} with user: #{user2.username}"

####

membership01 = Membership.create!(
  user_id: user2.id,
  community_id: community01.id,
  status: 'pending'
)
membership01.save

puts "...created a memebership for #{community01.name} with user: #{user2.username}"

####

membership02 = Membership.create!(
  user_id: user2.id,
  community_id: community02.id,
  status: 'pending'
)
membership02.save

puts "...created a memebership for #{community02.name} with user: #{user2.username}"

####

membership03 = Membership.create!(
  user_id: user2.id,
  community_id: community03.id,
  status: 'rejected'
)
membership03.save

puts "...created a memebership for #{community03.name} with user: #{user2.username}"

####

membership04 = Membership.create!(
  user_id: user.id,
  community_id: community04.id,
  status: 'approved'
)
membership04.save

puts "...created a memebership for #{community04.name} with user: #{user.username}"

####

membership05 = Membership.create!(
  user_id: user.id,
  community_id: community05.id,
  status: 'pending'
)
membership05.save

puts "...created a memebership for #{community05.name} with user: #{user.username}"

####

membership06 = Membership.create!(
  user_id: user.id,
  community_id: community06.id,
  status: 'pending'
)
membership06.save

puts "...created a memebership for #{community06.name} with user: #{user.username}"

####

membership07 = Membership.create!(
  user_id: user.id,
  community_id: community07.id,
  status: 'rejected'
)
membership07.save

puts "...created a memebership for #{community07.name} with user: #{user.username}"


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

Comment.create!( content: "This is a comment", meme: Meme.last, user: User.find_by(username: "memeber01"))
Comment.create!( content: "This is also a comment", meme: Meme.last, user: User.find_by(username: "memeber01"))
Comment.create!( content: "Is this a comment?", meme: Meme.last, user: User.find_by(username: "memeber01"))
Comment.create!( content: "This is not a comment", meme: Meme.last, user: User.find_by(username: "memeber01"))
Comment.create!( content: "ok, this this is not a comment", meme: Meme.last, user: User.find_by(username: "memeber01"))


Comment.create!( content: "This is a comment", meme: Meme.first, user: User.find_by(username: "memeber01"))
Comment.create!( content: "This is also a comment", meme: Meme.first, user: User.find_by(username: "memeber01"))
Comment.create!( content: "Is this a comment?", meme: Meme.first, user: User.find_by(username: "memeber01"))
Comment.create!( content: "This is not a comment", meme: Meme.first, user: User.find_by(username: "memeber01"))
Comment.create!( content: "ok, this this is not a comment", meme: Meme.first, user: User.find_by(username: "memeber01"))

puts "...created #{Comment.all.count}"
