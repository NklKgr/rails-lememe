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


# Seed data for a Product associated with the User

##### USERS

# User 1 - memeber01
user1 = User.create!(
  email: "123456@web.de",
  password: "123456",
  username: "memeber01"
)

#####

puts "...created user: #{user1.username}"

# User 2 - memeber02
user2 = User.create!(
  email: "123456002@web.de",
  password: "123456",
  username: "memeber02"
)

#####

puts "...created user: #{user2.username}"

# User 3 - _gilad228
user3 = User.create!(
  email: "123456003@web.de",
  password: "123456",
  username: "_gilad"
)

#####

puts "...created user: #{user3.username}"

# User 4 - tonio228
user4 = User.create!(
  email: "123456004@web.de",
  password: "123456",
  username: "tonio228"
)

#####

puts "...created user: #{user4.username}"

# User 5 - nklkgr
user5 = User.create!(
  email: "123456005@web.de",
  password: "123456",
  username: "nklkgr"
)

#####

puts "...created user: #{user5.username}"

# User 6 - lottirusche97
user6 = User.create!(
  email: "123456006@web.de",
  password: "123456",
  username: "lottirusche97"
)

#####

puts "...created user: #{user6.username}"

# User 7 - olli
user7 = User.create!(
  email: "123456007@web.de",
  password: "123456",
  username: "olli"
)

#####

puts "...created user: #{user7.username}"

# User 8 - jamie_volley_fan
user8 = User.create!(
  email: "123456008@web.de",
  password: "123456",
  username: "jamie_volley_fan"
)

#####

puts "...created user: #{user8.username}"

# User 9 - aliceart
user9 = User.create!(
  email: "123456009@web.de",
  password: "123456",
  username: "aliceart"
)

#####

puts "...created user: #{user9.username}"

# User 10 - maximilian_jlu
user10 = User.create!(
  email: "123456010@web.de",
  password: "123456",
  username: "maximilian_jlu"
)

#####

puts "...created user: #{user10.username}"

# User 11 - juli45
user11 = User.create!(
  email: "123456011@web.de",
  password: "123456",
  username: "juli45"
)

#####

puts "...created user: #{user11.username}"

# User 12 - jazz_julia95
user12 = User.create!(
  email: "123456012@web.de",
  password: "123456",
  username: "jazz_julia95"
)

#####

puts "...created user: #{user12.username}"

# User 13 - colleeen
user13 = User.create!(
  email: "1234560013@web.de",
  password: "123456",
  username: "colleeen"
)

#####

puts "...created user: #{user13.username}"

# User 14 - antonthegamer
user14 = User.create!(
  email: "123456014@web.de",
  password: "123456",
  username: "antonthegamer"
)

#####

puts "...created user: #{user14.username}"


# User 15 - meme_lover44
user15 = User.create!(
  email: "123456015@web.de",
  password: "123456",
  username: "meme_lover44"
)

#####

puts "...created user: #{user15.username}"

# User 16 - christie
user16 = User.create!(
  email: "123456016@web.de",
  password: "123456",
  username: "christie"
)

#####

puts "...created user: #{user16.username}"

# User 17 - code_enthusiast
user17 = User.create!(
  email: "123456017@web.de",
  password: "123456",
  username: "code_enthusiast"
)

#####

puts "...created user: #{user17.username}"


##### COMMUNITIES

# Community 0 - Le Wagon
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686045830/Le%20Meme/wagoners_sfb1sf.png")
community0 = Community.create!(
  name: 'Le Wagon',
  description: 'Le Wagon is a coding bootcamp that teaches students to develop web applications from scratch. Our cutting-edge curriculum and world-class teachers give students all the skills and tools needed to kick-start their tech career, land a job as software developers or product managers, or launch their own startup.',
  user: user1
)
community0.photo.attach(io: file, filename: "#{community0.name}_logo.png", content_type: "image/png")
community0.save!

#####

puts "...created community: #{community.name}"

# Community 01 - Zoo Berlin
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230459/Le%20Meme/download_peprag.jpg")
community01 = Community.create!(
  name: 'Zoo Berlin',
  description: 'Zoo Berlin is the oldest and best-known zoo in Germany. Opened in 1844 it covers 35 hectares (86.5 acres) and is located in Berlin\'s Tiergarten. With about 1,380 different species and over 20,200 animals the zoo presents one of the most comprehensive collection of species in the world.',
  user: user1
)
community01.photo.attach(io: file, filename: "#{community01.name}_logo.png", content_type: "image/png")
community01.save!

#####

puts "...created community: #{community01.name}"

# Community 02 - TU Berlin
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community02 = Community.create!(
  name: 'TU Berlin',
  description: 'The Technische Universität Berlin, known as TU Berlin for short and unofficially as the Technical University of Berlin or Berlin Institute of Technology, is a research university located in Berlin, Germany.',
  user: user1
)
community02.photo.attach(io: file, filename: "#{community02.name}_logo.png", content_type: "image/png")
community02.save!

#####

puts "...created community: #{community02.name}"

# Community 03 - Beats Berlin
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community03 = Community.create!(
  name: 'Beats Berlin',
  description: 'Perlen aus Deep & Organic House, Chill Electronica und Indie Dance. Englische News. Der perfekte Soundtrack für die Generation Nachhaltig.',
  user: user1
)
community03.photo.attach(io: file, filename: "#{community03.name}_logo.png", content_type: "image/png")
community03.save!

#####

puts "...created community: #{community03.name}"

# Community 04 - Soho House
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community04 = Community.create!(
  name: 'Soho House',
  description: 'Soho House is a global private members social club. The original location is at 40 Greek Street, Soho, London. The company now operates clubs, hotels and venues around the world, and in 2015 changed from SOHO House Group to Soho House & Co.',
  user: user2
)
community04.photo.attach(io: file, filename: "#{community04.name}_logo.png", content_type: "image/png")
community04.save!

#####

puts "...created community: #{community04.name}"

# Community 05 - Dance Academy
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community05 = Community.create!(
  name: 'Dance Academy',
  description: 'It is never too late to start dancing or to start again after a long break. Dancing is a great way to meet new people, have fun and of course stay in shape. You will gain a range of positive health benefits, including better flexibility, strength and stamina, and reduced stress. At BDI, we understand that dance doesn’t just help your physical well-being, it can help your self-confidence and your emotional well-being. It just makes you feel like smiling!',
  user: user2
)
community05.photo.attach(io: file, filename: "#{community05.name}_logo.png", content_type: "image/png")
community05.save!

#####

puts "...created community: #{community05.name}"

# Community 06 - Volleyball Club
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

#####

puts "...created community: #{community06.name}"

# Community 07 - Art Affairs
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community07 = Community.create!(
  name: 'Art Affairs',
  description: '
  The BERLIN ART INSTITUTE is an independent art school, international artist residency & arts incubator.',
  user: user2
)
community07.photo.attach(io: file, filename: "#{community07.name}_logo.png", content_type: "image/png")
community07.save!

#####

puts "...created community: #{community07.name}"

# Community 08 - Football Club
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community08 = Community.create!(
  name: 'Football Club',
  description: 'Der Berliner Fussball Club Dynamo e. V., kurz BFC Dynamo, ist ein Fußballverein aus dem Berliner Ortsteil Alt-Hohenschönhausen im Bezirk Lichtenberg. Der Verein ist mit 10 Meistertiteln in Folge von 1979 bis 1988 einer der erfolgreichsten Fußballclubs der DDR und Rekordmeister der DDR-Oberliga. Seit dem Aufstieg in der Saison 2013/14 spielt der BFC in der viertklassigen Regionalliga Nordost. Die erste Mannschaft trägt ihre Heimspiele im Sportforum Hohenschönhausen aus.',
  user: user3
)
community08.photo.attach(io: file, filename: "#{community08.name}_logo.png", content_type: "image/png")
community08.save!

#####

puts "...created community: #{community08.name}"

# Community 09 - Berlin Club Scene
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community09 = Community.create!(
  name: 'Berlin Club Scene',
  description: 'In Berlin kann man zu jeder Tages- und Nachtzeit ausgehen. Es ist sehr üblich, den Nachmittag im Club zu verbringen. Ist es ein Vor der Party oder ein Afterparty? Keine Ahnung aber das spielt  in Berlin keine Rolle. Niemand kümmert sich darum, ob man vor 5 Minuten oder vor 48 Stunden auf der Tanzfläche angekommen ist.',
  user: user4
)
community09.photo.attach(io: file, filename: "#{community09.name}_logo.png", content_type: "image/png")
community09.save!

#####

puts "...created community: #{community09.name}"

# Community 10 - Code School
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community10 = Community.create!(
  name: 'Code School',
  description: 'We are a top-ranked programming school aiming to train the next generation of IT talent.',
  user: user5
)
community10.photo.attach(io: file, filename: "#{community10.name}_logo.png", content_type: "image/png")
community10.save!

#####

puts "...created community: #{community10.name}"

# Community 11 - Live Laugh Pottery
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community11 = Community.create!(
  name: 'Live Laugh Pottery',
  description: 'Sie würden gerne einen Töpferworkshop, Keramikdesignkurs oder einen Tonkurs in Berlin besuchen? Bei uns sind Sie in guten Händen! Wir sind ein Team von Töpfern und Keramikkünstlern, das Sie gerne zu Töpferworkshops in Berlin Friedrichshain einlädt.',
  user: user6
)
community11.photo.attach(io: file, filename: "#{community11.name}_logo.png", content_type: "image/png")
community11.save!

#####

puts "...created community: #{community11.name}"

# Community 12 - Boulder Berlin
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community12 = Community.create!(
  name: 'Boulder Berlin',
  description: 'Seit September 2015 hat im Boulderklub Kreuzberg von jung bis alt, von Anfänger bis Experte jeder die Möglichkeit seiner Boulderleidenschaft nachzugehen oder diese einmalige Spielform des Kletterns kennenzulernen.',
  user: user7
)
community12.photo.attach(io: file, filename: "#{community12.name}_logo.png", content_type: "image/png")
community12.save!

#####

puts "...created community: #{community12.name}"

# Community 13 - Climate Matters
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community13 = Community.create!(
  name: 'Climate Matters',
  description: 'Climate Matters Berlin Brandenburg ist eine Gemeinschaftsinitiative von Technischer Universität Berlin, Freier Universität Berlin, Charité-Universitätsmedizin Berlin, der Universität der Künste Berlin, der Universität Potsdam und dem Potsdam-Institut für Klimafolgenforschung. Es versteht sich als transdisziplinäres Zentrum für Forschung und Wissenstransfer. Gemeinsam mit Vertreter*innen aus Politik, Wirtschaft und Zivilgesellschaft arbeitet es an der Umsetzung der Klimaziele des Pariser Abkommens.',
  user: user8
)
community13.photo.attach(io: file, filename: "#{community13.name}_logo.png", content_type: "image/png")
community13.save!

#####

puts "...created community: #{community13.name}"

# Community 14 - Berlin Content Creators
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community14 = Community.create!(
  name: 'Berlin Content Creators',
  description: 'The project brings together social media influencers and content creators from Germany, Ukraine, Romania, the Czech Republic, Lithuania, and Latvia with other actors to discuss their role in democratic societies in times of conflict. Over the course of 2023, participants will exchange lessons learned, meet with academics, experts, and decision-makers, and discuss mechanisms of disinformation online and how to counter them. The results will be published in the form of policy recommendations.',
  user: user9
)
community14.photo.attach(io: file, filename: "#{community14.name}_logo.png", content_type: "image/png")
community14.save!

#####

puts "...created community: #{community14.name}"

# Community 15 - Dating Fails
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community15 = Community.create!(
  name: 'Dating Fails',
  description: 'Wieder ein blödes Date gehabt? Nach diesen Fail-Storys fühlt ihr euch garantiert besser. Müsste man sich als Single nicht hin und wieder mal durch dieses zähe Unterfangen kämpfen – zumindest, wenn man nicht ewig alleine bleiben will –, würde man dieses Prozedere doch direkt abschaffen, oder?

  Denn nicht nur, dass sich das Ganze eigentlich jedes Mal wie ein Vorstellungsgespräch für den Platz als potentielles neues Liebesobjekt anfühlt, Dates können halt auch mal gaaaaanz schnell zu einem explosiven Minenfeld an Patzern und weirden Momenten werden. 💥😅

  Ein falscher Tritt und einem fliegt das Ding um die Ohren und man wartet nur darauf, dass sich das nächste schwarze Loch auftut, in das man reinspringen kann… oder in das man sein Gegenüber werfen kann.',
  user: user10
)
community15.photo.attach(io: file, filename: "#{community15.name}_logo.png", content_type: "image/png")
community15.save!

#####

puts "...created community: #{community15.name}"

# Community 16 - HBO Memes
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community16 = Community.create!(
  name: 'HBO Memes',
  description: 'Home Box Office (HBO) is an American pay television network, which is the flagship property of namesake parent subsidiary Home Box Office, Inc., itself a unit owned by Warner Bros. Discovery. The overall Home Box Office business unit is based at Warner Bros. Discoverys corporate headquarters inside 30 Hudson Yards in Manhattans West Side district. Programming featured on the network consists primarily of theatrically released motion pictures and original television programs as well as made-for-cable movies, documentaries, occasional comedy and concert specials, and periodic interstitial programs (consisting of short films and making-of documentaries).',
  user: user11
)
community16.photo.attach(io: file, filename: "#{community16.name}_logo.png", content_type: "image/png")
community16.save!

#####

puts "...created community: #{community16.name}"

# Community 17 - Disney Fantasy
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community17 = Community.create!(
  name: 'Disney Fantasy',
  description: 'The Walt Disney Company, commonly known as Disney is an American multinational, mass media and entertainment conglomerate that is headquartered at the Walt Disney Studios complex in Burbank, California. Disney was founded on October 16, 1923, by brothers Walt and Roy O. Disney as Disney Brothers Studio; it also operated under the names Walt Disney Studio and Walt Disney Productions before changing its name to The Walt Disney Company in 1986. Early in its existence, the company established itself as a leader in the animation industry, with the creation of the widely popular character Mickey Mouse, who first appeared in Steamboat Willie, which used synchronized sound, to become the first post-produced sound cartoon.[5] The character would go on to become the companys mascot.',
  user: user12
)
community17.photo.attach(io: file, filename: "#{community17.name}_logo.png", content_type: "image/png")
community17.save!

#####

puts "...created community: #{community17.name}"

# Community 18 - Forever Studying
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community18 = Community.create!(
  name: 'Forever Studying',
  description: 'Du bist Student:in, interessierst dich für den digitalen Wandel an Hochschulen und möchtst ihn mit Studierenden aus dem gesamten Bundesgebiet (& beyond) mitgestalten? Dann bist du hier genau richtig. Egal, ob du gerne die neuesten Informationen aus dem Hochschulforum Digitalisierung (HFD) erhalten, an Veranstaltungen oder kleinen Projekten teilnehmen oder dich sogar dauerhaft in unsere Community als DigitalChangeMaker einbringen möchtest, wir freuen uns, dass du dabei bist. Die Student Community im Hochschulforum ist eine wachsende Gruppe von Studierenden aus unterschiedlichen Fächern aus ganz Deutschland. Schau dich gerne hier und auf den verlinkten Seiten um, komm mit uns ins Gespräch und lass uns gemeinsam Ideen vorantreiben. ',
  user: user13
)
community18.photo.attach(io: file, filename: "#{community18.name}_logo.png", content_type: "image/png")
community18.save!

#####

puts "...created community: #{community18.name}"

# Community 19 - Fortnite Gamerz
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community19 = Community.create!(
  name: 'Fortnite Gamerz',
  description: 'In Fortnite, a squad of 4, 3, 2, or even just a solo player must duke it out against up to 100 other players in a full-on fight to the finish. The last remaining player gets that all-so-sought-after victory royale!

  Fortnite was not the first battle royale game. However, I would say it was the first battle royale game that truly shot the genre up to its current status in the market, and brought it to mainstream audiences.

  Thanks to the buzz around battle royales that Fortnite created, today the biggest developers in the world have added battle royales to their portfolios.

  For example, we can look at the very successful Call of Duty: Warzone, and even Nintendo’s foray into the market with Super Mario Bros. 35 and Super Bomberman R online.',
  user: user14
)
community19.photo.attach(io: file, filename: "#{community19.name}_logo.png", content_type: "image/png")
community19.save!

#####

puts "...created community: #{community19.name}"

# Community 20 - Young Drivers & Fast Cars
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community20 = Community.create!(
  name: 'Young Drivers & Fast Cars',
  description: 'A streetwear collection of shirts inspired by some of the most well-known streetcars in the world, blended with floral graphics and typography.',
  user: user15
)
community20.photo.attach(io: file, filename: "#{community20.name}_logo.png", content_type: "image/png")
community20.save!

#####

puts "...created community: #{community20.name}"

# Community 21 - LGBTQ+
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community21 = Community.create!(
  name: 'LGBTQ+',
  description: 'lesbian, gay, bisexual, transgender, and queer community (LGBTQ community), also called LGBTQ+ community, in any country, region, city, or other locality, a group of persons who identify as lesbian, gay (in the narrow sense of being a male who is sexually or romantically attracted to other males), bisexual, transgender, or queer and who feel some degree of empathy and solidarity with each other based on their shared experience of prejudice, discrimination, and disrespect or their awareness of the historical and contemporary oppression of lesbian, gay, bisexual, transgender, and queer (LGBTQ) persons.',
  user: user16
)
community21.photo.attach(io: file, filename: "#{community21.name}_logo.png", content_type: "image/png")
community21.save!

#####

puts "...created community: #{community21.name}"

# Community 22 - #BerlinHackathon
file = URI.open("https://res.cloudinary.com/dvje7oyen/image/upload/v1686230450/Le%20Meme/tu-berlin-technische-universitaet-berlin-logo-vector_sjoxc4.png")
community22 = Community.create!(
  name: '#BerlinHackathon',
  description: 'All the geek heads and computer programmers, Hackathons in Berlin is where you got to be. The Hackathon events in Berlin are for all the creators, developers and entrepreneurs who are in search of a platform where they can develop or learn a thing or two about a skill. There are meetups, games and coding competitions that are organized at this Hackathon events near you. Be a part of these events to learn about the trends, developments and get the insights from the fellow programmers, developers and attendees. Discover all the upcoming Hackathons in Berlin with us and find the best suitable one for yourself.',
  user: user17
)
community22.photo.attach(io: file, filename: "#{community22.name}_logo.png", content_type: "image/png")
community22.save!

#####

puts "...created community: #{community22.name}"


##### CHALLENGES

# Challenge 0 - Le Wagon - active
challenge0 = Challenge.create!(
  name: 'Batch_1216',
  community_id: community0.id
)
challenge0.save

#####

puts "...created challenge for #{community0.name} - #{challenge0.name}"

# Challenge 01 - Le Wagon - inactive
challenge01 = Challenge.create!(
  name: 'Batch_100',
  community_id: community0.id,
  active: 'false'
)
challenge01.save

#####

puts "...created challenge for #{community0.name} - #{challenge01.name}"

# Challenge 02 - Zoo Berlin - active
challenge02 = Challenge.create!(
  name: 'Smiling Pandas',
  community_id: community01.id
)
challenge02.save

#####

puts "...created challenge for #{community02.name} - #{challenge02.name}"

# Challenge 03 - TU Berlin - active
challenge03 = Challenge.create!(
  name: 'Thinking Memes',
  community_id: community02.id
)
challenge03.save

#####

puts "...created challenge for #{community02.name} - #{challenge03.name}"

# Challenge 04 - Beats Berlin - active
challenge04 = Challenge.create!(
  name: 'TechnoBerlin',
  community_id: community03.id
)
challenge04.save

#####

puts "...created challenge for #{community03.name} - #{challenge04.name}"

# Challenge 05 - Beats Berlin - inactive
challenge05 = Challenge.create!(
  name: 'Love for Music',
  community_id: community03.id,
  active: false
)
challenge05.save

#####

puts "...created challenge for #{community03.name} - #{challenge05.name}"

# Challenge 06 - Soho House - active
challenge06 = Challenge.create!(
  name: 'Summer in Berlin',
  community_id: community04.id
)
challenge06.save

#####

puts "...created challenge for #{community04.name} - #{challenge06.name}"

# Challenge 07 - Soho House - inactive
challenge07 = Challenge.create!(
  name: 'One too many',
  community_id: community04.id,
  active: false
)
challenge07.save

#####

puts "...created challenge for #{community04.name} - #{challenge07.name}"

# Challenge 08 - Dance Academy - active
challenge08 = Challenge.create!(
  name: 'Jazz Course',
  community_id: community05.id
)
challenge08.save

#####

puts "...created challenge for #{community05.name} - #{challenge08.name}"

# Challenge 09 - Dance Academy - inactive
challenge09 = Challenge.create!(
  name: 'HipHop Crew',
  community_id: community05.id,
  active: false
)
challenge09.save

#####

puts "...created challenge for #{community05.name} - #{challenge09.name}"

# Challenge 10 - Volleyball Club - active
challenge10 = Challenge.create!(
  name: 'Weekend Matches',
  community_id: community06.id
)
challenge10.save

#####

puts "...created challenge for #{community06.name} - #{challenge10.name}"

# Challenge 11 - Volleyball Club - inactive
challenge11 = Challenge.create!(
  name: 'Winter Team',
  community_id: community06.id,
  active: false
)
challenge11.save

#####

puts "...created challenge for #{community06.name} - #{challenge11.name}"

# Challenge 12 - Art Affairs - active
challenge12 = Challenge.create!(
  name: 'Contemporary Art',
  community_id: community07.id
)
challenge12.save

#####

puts "...created challenge for #{community07.name} - #{challenge12.name}"

# Challenge 13 - Art Affairs - inactive
challenge13 = Challenge.create!(
  name: 'Dutch Masters',
  community_id: community07.id,
  active: false
)
challenge13.save

#####

puts "...created challenge for #{community07.name} - #{challenge13.name}"

# Challenge 14 - Football Club - active
challenge14 = Challenge.create!(
  name: 'Worldclub 2022',
  community_id: community08.id
)
challenge14.save

#####

puts "...created challenge for #{community08.name} - #{challenge14.name}"

# Challenge 15 - Football Club - inactive
challenge15 = Challenge.create!(
  name: 'Goalkeepers',
  community_id: community08.id,
  active: false
)
challenge15.save

#####

puts "...created challenge for #{community08.name} - #{challenge15.name}"

# Challenge 16 - Berlin Club Scene - active
challenge16 = Challenge.create!(
  name: 'Berghain Club Memes',
  community_id: community09.id
)
challenge16.save

#####

puts "...created challenge for #{community09.name} - #{challenge16.name}"

# Challenge 17 - Berlin Club Scene - inactive
challenge17 = Challenge.create!(
  name: 'Techno Lovers',
  community_id: community09.id,
  active: false
)
challenge17.save

#####

puts "...created challenge for #{community09.name} - #{challenge17.name}"

# Challenge 18 - Code School - active
challenge18 = Challenge.create!(
  name: 'Python Challenge',
  community_id: community10.id
)
challenge18.save

#####

puts "...created challenge for #{community10.name} - #{challenge18.name}"

# Challenge 19 - Code School - inactive
challenge19 = Challenge.create!(
  name: 'Rails Forever',
  community_id: community10.id,
  active: false
)
challenge19.save

#####

puts "...created challenge for #{community10.name} - #{challenge19.name}"

# Challenge 20 - Live Laugh Pottery - active
challenge20 = Challenge.create!(
  name: 'Summer Course',
  community_id: community11.id
)
challenge20.save

#####

puts "...created challenge for #{community11.name} - #{challenge20.name}"

# Challenge 21 - Live Laugh Pottery - inactive
challenge21 = Challenge.create!(
  name: 'Winter Course',
  community_id: community11.id,
  active: false
)
challenge21.save

#####

puts "...created challenge for #{community11.name} - #{challenge21.name}"

# Challenge 22 - Boulder Berlin - active
challenge22 = Challenge.create!(
  name: 'Outdoor Season Group',
  community_id: community12.id
)
challenge22.save

#####

puts "...created challenge for #{community12.name} - #{challenge22.name}"

# Challenge 23 - Boulder Berlin - inactive
challenge23 = Challenge.create!(
  name: 'Beginners',
  community_id: community12.id,
  active: false
)
challenge23.save

#####

puts "...created challenge for #{community12.name} - #{challenge23.name}"

# Challenge 24 - Climate Matters - active
challenge24 = Challenge.create!(
  name: 'Hot Summer',
  community_id: community13.id
)
challenge24.save

#####

puts "...created challenge for #{community13.name} - #{challenge24.name}"

# Challenge 25 - Climate Matters - inactive
challenge25 = Challenge.create!(
  name: 'Spring Challenge',
  community_id: community13.id,
  active: false
)
challenge25.save

#####

puts "...created challenge for #{community13.name} - #{challenge25.name}"

# Challenge 26 - Berlin Content Creators - active
challenge26 = Challenge.create!(
  name: 'TikTok Memes',
  community_id: community14.id
)
challenge26.save

#####

puts "...created challenge for #{community14.name} - #{challenge26.name}"

# Challenge 27 - Berlin Content Creators - inactive
challenge27 = Challenge.create!(
  name: 'Video Content Creators Berlin',
  community_id: community14.id,
  active: false
)
challenge27.save

#####

puts "...created challenge for #{community14.name} - #{challenge27.name}"

# Challenge 28 - Dating Fails - active
challenge28 = Challenge.create!(
  name: 'Cinema Dates',
  community_id: community15.id
)
challenge28.save

#####

puts "...created challenge for #{community15.name} - #{challenge28.name}"

# Challenge 29 - Dating Fails - inactive
challenge29 = Challenge.create!(
  name: 'Dinner Dates',
  community_id: community15.id,
  active: false
)
challenge29.save

#####

puts "...created challenge for #{community15.name} - #{challenge29.name}"

# Challenge 30 - HBO Memes - active
challenge30 = Challenge.create!(
  name: 'Game of Thrones',
  community_id: community16.id
)
challenge30.save

#####

puts "...created challenge for #{community16.name} - #{challenge30.name}"

# Challenge 31 - HBO Memes - inactive
challenge31 = Challenge.create!(
  name: 'HBO Highlights',
  community_id: community16.id,
  active: false
)
challenge31.save

#####

puts "...created challenge for #{community16.name} - #{challenge31.name}"

# Challenge 32 - Disney Fantasy - active
challenge32 = Challenge.create!(
  name: 'Childhood Favorites',
  community_id: community17.id
)
challenge32.save

#####

puts "...created challenge for #{community17.name} - #{challenge32.name}"

# Challenge 33 - Disney Fantasy - inactive
challenge33 = Challenge.create!(
  name: 'Lion King',
  community_id: community17.id,
  active: false
)
challenge33.save

#####

puts "...created challenge for #{community17.name} - #{challenge33.name}"

# Challenge 34 - Forever Studying - active
challenge34 = Challenge.create!(
  name: 'Stuck in Bachelors Degree',
  community_id: community18.id
)
challenge34.save

#####

puts "...created challenge for #{community18.name} - #{challenge34.name}"

# Challenge 35 - Forever Studying - inactive
challenge35 = Challenge.create!(
  name: 'Back to School',
  community_id: community18.id,
  active: false
)
challenge35.save

#####

puts "...created challenge for #{community18.name} - #{challenge35.name}"

# Challenge 36 - Fortnite Gamerz - active
challenge36 = Challenge.create!(
  name: 'Gaming Nights',
  community_id: community19.id
)
challenge36.save

#####

puts "...created challenge for #{community19.name} - #{challenge36.name}"

# Challenge 37 - Fortnite Gamerz - inactive
challenge37 = Challenge.create!(
  name: 'Gamathon',
  community_id: community19.id,
  active: false
)
challenge37.save

#####

puts "...created challenge for #{community19.name} - #{challenge37.name}"

# Challenge 38 - Young Drivers & Fast Cars - active
challenge38 = Challenge.create!(
  name: 'Fast & Curious',
  community_id: community20.id
)
challenge38.save

#####

puts "...created challenge for #{community20.name} - #{challenge38.name}"

# Challenge 39 - Young Drivers & Fast Cars - inactive
challenge39 = Challenge.create!(
  name: 'Porsche Challenge',
  community_id: community20.id,
  active: false
)
challenge39.save

#####

puts "...created challenge for #{community20.name} - #{challenge39.name}"

# Challenge 40 - LGBTQ+ - active
challenge40 = Challenge.create!(
  name: 'More Colors',
  community_id: community21.id
)
challenge40.save

#####

puts "...created challenge for #{community21.name} - #{challenge40.name}"

# Challenge 41 - LGBTQ+ - inactive
challenge41 = Challenge.create!(
  name: 'Diversity First',
  community_id: community21.id,
  active: false
)
challenge41.save

#####

puts "...created challenge for #{community21.name} - #{challenge41.name}"

# Challenge 42 - #BerlinHackathon - active
challenge42 = Challenge.create!(
  name: 'HackItOn',
  community_id: community22.id
)
challenge42.save

#####

puts "...created challenge for #{community22.name} - #{challenge42.name}"


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
