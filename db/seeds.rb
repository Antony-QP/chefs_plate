require 'faker'
require 'open-uri'

puts "Cleaning database"
Follower.destroy_all
Menu.destroy_all
Post.destroy_all
Chef.destroy_all
User.destroy_all
Restaurant.destroy_all

puts "Creating users"
user_1 = User.create!(email: "anthony@gmail.com", password: "123456")
user_2 = User.create!(email: "billy@gmail.com", password: "123456")
user_3 = User.create!(email: "andy@gmail.com", password: "123456")
user_4 = User.create!(email: "james@gmail.com", password: "123456")
user_5 = User.create!(email: "harriet@gmail.com", password: "123456")
user_6 = User.create!(email: "marley@gmail.com", password: "123456")
user_7 = User.create!(email: "ben@gmail.com", password: "123456")
user_8 = User.create!(email: "dillan@gmail.com", password: "123456")
user_9 = User.create!(email: "ozzy@gmail.com", password: "123456")
user_10 = User.create!(email: "sarah@gmail.com", password: "123456")


puts "Creating restaurants"
restaurant_1 = Restaurant.create!({
    name: Faker::Restaurant.name,
    location: "Abeelstraat 83"
})
restaurant_2 = Restaurant.create!({
    name: Faker::Restaurant.name,
    location: "Joh. Vermeerstraat 66"
})
restaurant_3 = Restaurant.create!({
    name: Faker::Restaurant.name,
    location: "De Keverbergstraat 5"
})
restaurant_4 = Restaurant.create!({
    name: Faker::Restaurant.name,
    location: "Viaductstraat 200"
})
restaurant_5 = Restaurant.create!({
    name: Faker::Restaurant.name,
    location: "Waterlelie 94"
})
restaurant_6 = Restaurant.create!({
    name: Faker::Restaurant.name,
    location: "Van der Waalsstraat 173"
})
restaurant_7 = Restaurant.create!({
    name: Faker::Restaurant.name,
    location: "Armstraat 175"
})
restaurant_8 = Restaurant.create!({
    name: Faker::Restaurant.name,
    location: "Lurvinksteeg 194"
})
restaurant_9 = Restaurant.create!({
    name: Faker::Restaurant.name,
    location: "Sportlaan 40"
})
restaurant_10 = Restaurant.create!({
    name: Faker::Restaurant.name,
    location: "Anna Maria Geertruida Schmidtlaan 114"
})

puts "Creating chefs"
chef_1 = Chef.new({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    inspiration: Faker::Lorem.sentence(word_count: 20),
    work_history: Faker::Lorem.sentence(word_count: 20),
    mission: Faker::Lorem.sentence(word_count: 20),
    restaurant_id: restaurant_1.id
})
chef_1.save!

chef_2 = Chef.new({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    inspiration: Faker::Lorem.sentence(word_count: 20),
    work_history: Faker::Lorem.sentence(word_count: 20),
    mission: Faker::Lorem.sentence(word_count: 20),
    restaurant_id: restaurant_2.id
})
chef_2.save!
chef_3 = Chef.new({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    inspiration: Faker::Lorem.sentence(word_count: 20),
    work_history: Faker::Lorem.sentence(word_count: 20),
    mission: Faker::Lorem.sentence(word_count: 20),
    restaurant_id: restaurant_3.id
})
chef_3.save!
chef_4 = Chef.new({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    inspiration: Faker::Lorem.sentence(word_count: 20),
    work_history: Faker::Lorem.sentence(word_count: 20),
    mission: Faker::Lorem.sentence(word_count: 20),
    restaurant_id: restaurant_4.id
})
chef_4.save!
chef_5 = Chef.new({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    inspiration: Faker::Lorem.sentence(word_count: 20),
    work_history: Faker::Lorem.sentence(word_count: 20),
    mission: Faker::Lorem.sentence(word_count: 20),
    restaurant_id: restaurant_5.id
})
chef_5.save!
chef_6 = Chef.new({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    inspiration: Faker::Lorem.sentence(word_count: 20),
    work_history: Faker::Lorem.sentence(word_count: 20),
    mission: Faker::Lorem.sentence(word_count: 20),
    restaurant_id: restaurant_6.id
})
chef_6.save!
chef_7 = Chef.new({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    inspiration: Faker::Lorem.sentence(word_count: 20),
    work_history: Faker::Lorem.sentence(word_count: 20),
    mission: Faker::Lorem.sentence(word_count: 20),
    restaurant_id: restaurant_7.id
})
chef_7.save!
chef_8 = Chef.new({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    inspiration: Faker::Lorem.sentence(word_count: 20),
    work_history: Faker::Lorem.sentence(word_count: 20),
    mission: Faker::Lorem.sentence(word_count: 20),
    restaurant_id: restaurant_8.id
})
chef_8.save!
chef_9 = Chef.new({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    inspiration: Faker::Lorem.sentence(word_count: 20),
    work_history: Faker::Lorem.sentence(word_count: 20),
    mission: Faker::Lorem.sentence(word_count: 20),
    restaurant_id: restaurant_9.id
})
chef_9.save!
chef_10 = Chef.new({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    inspiration: Faker::Lorem.sentence(word_count: 20),
    work_history: Faker::Lorem.sentence(word_count: 20),
    mission: Faker::Lorem.sentence(word_count: 20),
    restaurant_id: restaurant_10.id
})
chef_10.save!

puts "Creating posts"

post_1_picture = URI.open('https://images.unsplash.com/photo-1455279032140-49a4bf46f343?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDd8fGNoZWYlMjBjb29raW5nfGVufDB8fDB8&auto=format&fit=crop&w=800&q=60')
post_1 = Post.new({
    description: Faker::Food.description,
    chef_id: chef_1.id
})
post_1.photo.attach(io: post_1_picture, filename: 'post1.png', content_type: 'image/png')
post_1.save!

post_2_picture = URI.open('https://images.unsplash.com/photo-1601002177343-070d8f2d3496?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hlZiUyMGNvb2tpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
post_2 = Post.new({
    description: Faker::Food.description, 
    chef_id: chef_1.id
})
post_2.photo.attach(io: post_2_picture, filename: 'post2.png', content_type: 'image/png')
post_2.save!

post_3_picture = URI.open('https://images.unsplash.com/photo-1447279506476-3faec8071eee?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2hlZiUyMGNvb2tpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
post_3 = Post.new({
    description: Faker::Food.description, 
    chef_id: chef_2.id
})
post_3.photo.attach(io: post_3_picture, filename: 'post3.png', content_type: 'image/png')
post_3.save!

post_4_picture = URI.open('https://images.unsplash.com/photo-1601001815853-3835274403b3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTN8fGNoZWYlMjBjb29raW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
post_4 = Post.new({
    description: Faker::Food.description, 
    chef_id: chef_2.id
})
post_4.photo.attach(io: post_4_picture, filename: 'post4.png', content_type: 'image/png')
post_4.save!

post_5_picture = URI.open('https://images.unsplash.com/photo-1581349485608-9469926a8e5e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTl8fGNoZWYlMjBjb29raW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
post_5 = Post.new({
    description: Faker::Food.description, 
    chef_id: chef_3.id
})
post_5.photo.attach(io: post_5_picture, filename: 'post5.png', content_type: 'image/png')
post_5.save!

post_6_picture = URI.open('https://images.unsplash.com/photo-1551218808-94e220e084d2?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fGNoZWYlMjBjb29raW5nfGVufDB8fDB8&auto=format&fit=crop&w=800&q=60')
post_6 = Post.new({
    description: Faker::Food.description, 
    chef_id: chef_3.id
})
post_6.photo.attach(io: post_6_picture, filename: 'post6.png', content_type: 'image/png')
post_6.save!

post_7_picture = URI.open('https://images.unsplash.com/photo-1560963689-b9e9773ff232?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTd8fGNoZWYlMjBjb29raW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
post_7 = Post.new({
    description: Faker::Food.description, 
    chef_id: chef_4.id
})
post_7.photo.attach(io: post_7_picture, filename: 'post7.png', content_type: 'image/png')
post_7.save!

post_8_picture = URI.open('https://images.unsplash.com/photo-1611520049321-06bb9102dbda?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8bG9ic3RlcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
post_8 = Post.new({
    description: Faker::Food.description, 
    chef_id: chef_4.id
})
post_8.photo.attach(io: post_8_picture, filename: 'post8.png', content_type: 'image/png')
post_8.save!

post_9_picture = URI.open('https://images.unsplash.com/photo-1605760652327-d25d8305009c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fGxvYnN0ZXJ8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
post_9 = Post.new({
    description: Faker::Food.description, 
    chef_id: chef_5.id
})
post_9.photo.attach(io: post_9_picture, filename: 'post9.png', content_type: 'image/png')
post_9.save!

post_10_picture = URI.open('https://images.unsplash.com/photo-1610978884240-96090bd249cc?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzd8fGxvYnN0ZXJ8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
post_10 = Post.new({
    description: Faker::Food.description, 
    chef_id: chef_5.id
})
post_10.photo.attach(io: post_10_picture, filename: 'post10.png', content_type: 'image/png')
post_10.save!

puts "Creating Menus"

menu_1_picture_1 = URI.open('https://images.unsplash.com/photo-1455279032140-49a4bf46f343?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDd8fGNoZWYlMjBjb29raW5nfGVufDB8fDB8&auto=format&fit=crop&w=800&q=60')
menu_1_picture_2 = URI.open('https://images.unsplash.com/photo-1455279032140-49a4bf46f343?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDd8fGNoZWYlMjBjb29raW5nfGVufDB8fDB8&auto=format&fit=crop&w=800&q=60')
menu_1 = Menu.new({
    title: "5 course spring menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "French",
    chef_id: chef_1.id
})
menu_1.photos.attach(io: menu_1_picture_1, filename: 'post1.png', content_type: 'image/png')
menu_1.photos.attach(io: menu_1_picture_2, filename: 'post1.png', content_type: 'image/png')
menu_1.save!

menu_2_picture_1 = URI.open('https://images.unsplash.com/photo-1601002177343-070d8f2d3496?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hlZiUyMGNvb2tpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
menu_2_picture_2 = URI.open('https://images.unsplash.com/photo-1601002177343-070d8f2d3496?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hlZiUyMGNvb2tpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
menu_2 = Menu.new({
    title: "5 course winter menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "French",
    chef_id: chef_1.id
})
menu_2.save!

menu_3_picture_1 = URI.open('https://images.unsplash.com/photo-1601002177343-070d8f2d3496?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hlZiUyMGNvb2tpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
menu_3_picture_2 = URI.open('https://images.unsplash.com/photo-1601002177343-070d8f2d3496?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hlZiUyMGNvb2tpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
menu_3 = Menu.new({
    title: "Summer menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "French",
    chef_id: chef_2.id
})
menu_3.save!

menu_4_picture_1 = URI.open('https://images.unsplash.com/photo-1601002177343-070d8f2d3496?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hlZiUyMGNvb2tpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
menu_4_picture_2 = URI.open('https://images.unsplash.com/photo-1601002177343-070d8f2d3496?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hlZiUyMGNvb2tpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
menu_4 = Menu.new({
    title: "Special atlantic fish menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "Spanish",
    chef_id: chef_2.id
})
menu_4.save!

menu_5_picture_1 = URI.open('https://images.unsplash.com/photo-1601002177343-070d8f2d3496?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hlZiUyMGNvb2tpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
menu_5_picture_2 = URI.open('https://images.unsplash.com/photo-1601002177343-070d8f2d3496?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hlZiUyMGNvb2tpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
menu_5 = Menu.new({
    title: "Scottish menu - December",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "Traditional European",
    chef_id: chef_3.id
})
menu_5.save!

menu_6_picture_1 = URI.open('https://images.unsplash.com/photo-1601002177343-070d8f2d3496?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hlZiUyMGNvb2tpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
menu_6_picture_2 = URI.open('https://images.unsplash.com/photo-1601002177343-070d8f2d3496?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hlZiUyMGNvb2tpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
menu_6 = Menu.new({
    title: "August game menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "British",
    chef_id: chef_3.id
})
menu_6.save!

menu_7_picture_1 = URI.open('https://images.unsplash.com/photo-1601002177343-070d8f2d3496?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hlZiUyMGNvb2tpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
menu_7_picture_2 = URI.open('https://images.unsplash.com/photo-1601002177343-070d8f2d3496?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hlZiUyMGNvb2tpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
menu_7 = Menu.new({
    title: "July menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "French",
    chef_id: chef_4.id
})
menu_7.save!

menu_8_picture_1 = URI.open('https://images.unsplash.com/photo-1601002177343-070d8f2d3496?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hlZiUyMGNvb2tpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
menu_8_picture_2 = URI.open('https://images.unsplash.com/photo-1601002177343-070d8f2d3496?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hlZiUyMGNvb2tpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
menu_8 = Menu.new({
    title: "January winter menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "British",
    chef_id: chef_4.id
})
menu_8.save!

menu_9_picture_1 = URI.open('https://images.unsplash.com/photo-1601002177343-070d8f2d3496?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hlZiUyMGNvb2tpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
menu_9_picture_2 = URI.open('https://images.unsplash.com/photo-1601002177343-070d8f2d3496?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hlZiUyMGNvb2tpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
menu_9 = Menu.new({
    title: "April seafood menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "Italian",
    chef_id: chef_5.id
})
menu_9.save!

menu_10_picture_1 = URI.open('https://images.unsplash.com/photo-1601002177343-070d8f2d3496?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hlZiUyMGNvb2tpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
menu_10_picture_2 = URI.open('https://images.unsplash.com/photo-1601002177343-070d8f2d3496?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hlZiUyMGNvb2tpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
menu_10 = Menu.new({
    title: "Trial menu - Summer",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "Scandinavian",
    chef_id: chef_5.id
})
menu_10.save!

puts "Creating followers"

follower_1 = Follower.create!({
    chef_id: chef_1.id,
    user_id: user_1.id
})

follower_2 = Follower.create!({
    chef_id: chef_2.id,
    user_id: user_2.id
})

follower_3 = Follower.create!({
    chef_id: chef_3.id,
    user_id: user_3.id
})

follower_4 = Follower.create!({
    chef_id: chef_4.id,
    user_id: user_4.id
})

follower_5 = Follower.create!({
    chef_id: chef_5.id,
    user_id: user_5.id
})

follower_6 = Follower.create!({
    chef_id: chef_6.id,
    user_id: user_6.id
})

follower_7 = Follower.create!({
    chef_id: chef_7.id,
    user_id: user_7.id
})

follower_8 = Follower.create!({
    chef_id: chef_8.id,
    user_id: user_8.id
})

follower_9 = Follower.create!({
    chef_id: chef_9.id,
    user_id: user_9.id
})

follower_10 = Follower.create!({
    chef_id: chef_10.id,
    user_id: user_10.id
})