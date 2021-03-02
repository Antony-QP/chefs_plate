require 'faker'

puts "Cleaning database"
User.destroy_all
Follower.destroy_all
Menu.destroy_all
Post.destroy_all
Chef.destroy_all
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


puts "Adding restaurants"
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

puts "Adding chefs"
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

post_1 = Post.create!({
    description: Faker::Food.description,
    chef_id: chef_1.id
})

post_2 = Post.create!({
    description: Faker::Food.description, 
    chef_id: chef_1.id
})

post_3 = Post.create!({
    description: Faker::Food.description, 
    chef_id: chef_2.id
})

post_4 = Post.create!({
    description: Faker::Food.description, 
    chef_id: chef_2.id
})

post_5 = Post.create!({
    description: Faker::Food.description, 
    chef_id: chef_3.id
})

post_6 = Post.create!({
    description: Faker::Food.description, 
    chef_id: chef_3.id
})

post_7 = Post.create!({
    description: Faker::Food.description, 
    chef_id: chef_4.id
})

post_8 = Post.create!({
    description: Faker::Food.description, 
    chef_id: chef_4.id
})

post_9 = Post.create!({
    description: Faker::Food.description, 
    chef_id: chef_5.id
})

post_10 = Post.create!({
    description: Faker::Food.description, 
    chef_id: chef_5.id
})

puts "Creating Menus"

menu_1 = Menu.create!({
    title: "5 course spring menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "French",
    chef_id: chef_1.id
})

menu_2 = Menu.create!({
    title: "5 course winter menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "French",
    chef_id: chef_1.id
})

menu_3 = Menu.create!({
    title: "Summer menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "French",
    chef_id: chef_2.id
})

menu_4 = Menu.create!({
    title: "Special atlantic fish menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "Spanish",
    chef_id: chef_2.id
})

menu_5 = Menu.create!({
    title: "Scottish menu - December",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "Traditional European",
    chef_id: chef_3.id
})

menu_6 = Menu.create!({
    title: "August game menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "British",
    chef_id: chef_3.id
})

menu_7 = Menu.create!({
    title: "July menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "French",
    chef_id: chef_4.id
})

menu_8 = Menu.create!({
    title: "January winter menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "British",
    chef_id: chef_4.id
})

menu_9 = Menu.create!({
    title: "April seafood menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "Italian",
    chef_id: chef_5.id
})

menu_10 = Menu.create!({
    title: "Trial menu - Summer",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "Scandinavian",
    chef_id: chef_5.id
})

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