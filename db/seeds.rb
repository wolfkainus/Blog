# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.destroy_all
Post.destroy_all
Comment.destroy_all
Style.destroy_all

#users = []

#users << User.create(
#  name: 'Eduardo',
#  lastname: 'Cornejo',
#  username: 'afterlife',
#  email: 'edo.cornejo.m@gmail.com',
#  password: 'laclave',
#  role: 'admin'
#)
#users << User.create(
#  name: 'Alfredo',
#  lastname: 'Lobos',
#  username: 'fido',
#  email: 'fido@gmail.com',
#  password: 'laclave',
#  role: 'editor'
#)
#users << User.create(
#  name: 'Patricio',
#  lastname: 'Campos',
#  username: 'Pato',
#  email: 'patolin@gmail.com',
#  password: 'laclave',
#  role: 'basic'
#)

styles = []

styles << Style.create(name: 'Rock')
styles << Style.create(name: 'Pop')
styles << Style.create(name: 'Metal')
styles << Style.create(name: 'Folk')
styles << Style.create(name: 'Punk')
styles << Style.create(name: 'Disco')
styles << Style.create(name: 'Electro')
styles << Style.create(name: 'Indie')
styles << Style.create(name: 'House')
styles << Style.create(name: 'Classic')



posts = []

(1..20).each do |m|
  posts << Post.create(
    title: Faker::Address.street_name,
    content: Faker::Lorem.paragraph(20, true, 10)#, 
    #user: users[rand(users.length)]
  )
end

comments = []

(1..50).each do |r|
  comments << Comment.create(
    content: Faker::Lorem.paragraph(3),
    post: posts[rand(posts.length)]#,
    #user: users[rand(users.length)]
  )
end

#120.times do
#  PostStyle.create(
#    post: posts.sample,
#    style: styles.sample
#  )
#end