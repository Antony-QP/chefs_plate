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
user_1 = User.create!(email: "chuck@gmail.com", password: "123456")
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
    location: "Abeelstraat 83, The Netherlands"
})
restaurant_2 = Restaurant.create!({
    name: Faker::Restaurant.name,
    location: "Joh. Vermeerstraat 66, The Netherlands"
})
restaurant_3 = Restaurant.create!({
    name: Faker::Restaurant.name,
    location: "De Keverbergstraat 5, The Netherlands"
})
restaurant_4 = Restaurant.create!({
    name: Faker::Restaurant.name,
    location: "Wibautstraat 276, The Netherlands"
})
restaurant_5 = Restaurant.create!({
    name: Faker::Restaurant.name,
    location: "Waterlelie 94"
})
restaurant_6 = Restaurant.create!({
    name: Faker::Restaurant.name,
    location: "Van der Waalsstraat 173, The Netherlands"
})
restaurant_7 = Restaurant.create!({
    name: Faker::Restaurant.name,
    location: "Bos en Lommerweg 113, The Netherlands"
})
restaurant_8 = Restaurant.create!({
    name: Faker::Restaurant.name,
    location: "Lurvinksteeg 194, The Netherlands"
})
restaurant_9 = Restaurant.create!({
    name: Faker::Restaurant.name,
    location: "Sportlaan 40, The Netherlands"
})
restaurant_10 = Restaurant.create!({
    name: Faker::Restaurant.name,
    location: "Anna Maria Geertruida Schmidtlaan 114, The Netherlands"
})

puts "Creating chefs"
chef_1_picture = URI.open('https://i.pinimg.com/474x/b8/39/6a/b8396ae14a3b9cb506668dabdd462cfd.jpg')
chef_1 = Chef.new({
    first_name: "Martin",
    last_name: "Johnson",
    email: Faker::Internet.email,
    inspiration: "I draw my inspiration from the time I spent living and working in kitchens in Madrid, Spain.  I used to live near the sea and developed strong relationships with the local fisherman there and I became obessed with cooking great seafood.  I bring this influence from the sea and combine it with creative nature of Spanish cooking to create original and exiciting cuisine",
    work_history: "I have worked at the Grand Hyatt and Regency in Barcelona before moving to current job as head chef where I work now",
    mission: "My mission is to bring excitement and originalty into my cooking in a sustainable way.  I focus on ingredients like shell-fish and organic vegetables to cook in the most sustainable way possible",
    restaurant_id: restaurant_1.id
})
chef_1.photos.attach(io: chef_1_picture, filename: 'chef_1.png', content_type: 'image/png')
chef_1.save!

chef_2_picture = URI.open('https://i.pinimg.com/564x/21/71/b6/2171b62bde566556eee1f6b534547ac3.jpg')
chef_2 = Chef.new({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    inspiration: Faker::Lorem.sentence(word_count: 20),
    work_history: Faker::Lorem.sentence(word_count: 20),
    mission: Faker::Lorem.sentence(word_count: 20),
    restaurant_id: restaurant_2.id
})
chef_2.photos.attach(io: chef_2_picture, filename: 'chef_2.png', content_type: 'image/png')
chef_2.save!

chef_3_picture = URI.open('https://i.pinimg.com/474x/52/55/4b/52554b5cd0c4e3eef511a26a42a6b577.jpg')
chef_3 = Chef.new({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    inspiration: Faker::Lorem.sentence(word_count: 20),
    work_history: Faker::Lorem.sentence(word_count: 20),
    mission: Faker::Lorem.sentence(word_count: 20),
    restaurant_id: restaurant_3.id
})
chef_3.photos.attach(io: chef_3_picture, filename: 'chef_3.png', content_type: 'image/png')
chef_3.save!

chef_4_picture = URI.open('https://i.pinimg.com/474x/dd/2a/dd/dd2add8b11b60c3fd6c9f9607eaba0d3.jpg')
chef_4 = Chef.new({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    inspiration: Faker::Lorem.sentence(word_count: 20),
    work_history: Faker::Lorem.sentence(word_count: 20),
    mission: Faker::Lorem.sentence(word_count: 20),
    restaurant_id: restaurant_4.id
})
chef_4.photos.attach(io: chef_4_picture, filename: 'chef_4.png', content_type: 'image/png')
chef_4.save!

chef_5_picture = URI.open('https://i.pinimg.com/474x/da/e7/66/dae7661d75530c6bc13dd3e8a01f56eb.jpg')
chef_5 = Chef.new({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    inspiration: Faker::Lorem.sentence(word_count: 20),
    work_history: Faker::Lorem.sentence(word_count: 20),
    mission: Faker::Lorem.sentence(word_count: 20),
    restaurant_id: restaurant_5.id
})
chef_5.photos.attach(io: chef_5_picture, filename: 'chef_5.png', content_type: 'image/png')
chef_5.save!

chef_6_picture = URI.open('https://i.pinimg.com/474x/21/7f/c7/217fc7814b746405e42a1e5b7f30fc82.jpg')
chef_6 = Chef.new({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    inspiration: Faker::Lorem.sentence(word_count: 20),
    work_history: Faker::Lorem.sentence(word_count: 20),
    mission: Faker::Lorem.sentence(word_count: 20),
    restaurant_id: restaurant_6.id
})
chef_6.photos.attach(io: chef_6_picture, filename: 'chef_6.png', content_type: 'image/png')
chef_6.save!

chef_7_picture = URI.open('https://i.pinimg.com/474x/c7/13/23/c71323e4a3bcbda941f85374e0697a44.jpg')
chef_7 = Chef.new({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    inspiration: Faker::Lorem.sentence(word_count: 20),
    work_history: Faker::Lorem.sentence(word_count: 20),
    mission: Faker::Lorem.sentence(word_count: 20),
    restaurant_id: restaurant_7.id
})
chef_7.photos.attach(io: chef_7_picture, filename: 'chef_7.png', content_type: 'image/png')
chef_7.save!

chef_8_picture = URI.open('https://i.pinimg.com/474x/e0/46/c3/e046c3dc7b3c1d5782e1aa44438a0d30.jpg')
chef_8 = Chef.new({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    inspiration: Faker::Lorem.sentence(word_count: 20),
    work_history: Faker::Lorem.sentence(word_count: 20),
    mission: Faker::Lorem.sentence(word_count: 20),
    restaurant_id: restaurant_8.id
})
chef_8.photos.attach(io: chef_8_picture, filename: 'chef_8.png', content_type: 'image/png')
chef_8.save!

chef_9_picture = URI.open('https://i.pinimg.com/474x/51/c2/8f/51c28f5428eabfc74df9ef56fd837578.jpg')
chef_9 = Chef.new({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    inspiration: Faker::Lorem.sentence(word_count: 20),
    work_history: Faker::Lorem.sentence(word_count: 20),
    mission: Faker::Lorem.sentence(word_count: 20),
    restaurant_id: restaurant_9.id
})
chef_9.photos.attach(io: chef_9_picture, filename: 'chef_9.png', content_type: 'image/png')
chef_9.save!

chef_10_picture = URI.open('https://i.pinimg.com/474x/94/4e/51/944e51b032d4ccebffbe9e1ea7315dab.jpg')
chef_10 = Chef.new({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    inspiration: Faker::Lorem.sentence(word_count: 20),
    work_history: Faker::Lorem.sentence(word_count: 20),
    mission: Faker::Lorem.sentence(word_count: 20),
    restaurant_id: restaurant_10.id
})
chef_10.photos.attach(io: chef_10_picture, filename: 'chef_10.png', content_type: 'image/png')
chef_10.save!

puts "Creating posts"

post_1_picture = URI.open('https://images.unsplash.com/photo-1539740091271-0bd0502ebf06?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8bG9ic3RlcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
post_1 = Post.new({
    description: "Fresh lobster in from the atlantic coast.  We are using whats left to make a truly outstanding consume to start off our fish tasting menu",
    chef_id: chef_1.id
})
post_1.photo.attach(io: post_1_picture, filename: 'post1.png', content_type: 'image/png')
post_1.save!

post_2_picture = URI.open('https://images.unsplash.com/photo-1606677661991-446cea8ee182?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8YmVlZnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
post_2 = Post.new({
    description: "we have been experimenting with our new in house smoker.  30 day old aged rib eyes have been in for 2 days and looking good!", 
    chef_id: chef_1.id
})
post_2.photo.attach(io: post_2_picture, filename: 'post2.png', content_type: 'image/png')
post_2.save!

post_3_picture = URI.open('https://images.unsplash.com/photo-1597771125516-4eddaf867446?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2251&q=80')
post_3 = Post.new({
    description: "Our truffle dealer from Milan has been to visit us and brought us some of the most incredible black truffles.  We have been teaming  up with our pastry chef to create an outstading fresh pasta with black truffle dish", 
    chef_id: chef_1.id
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

post_11_picture = URI.open('https://images.unsplash.com/photo-1455279032140-49a4bf46f343?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDd8fGNoZWYlMjBjb29raW5nfGVufDB8fDB8&auto=format&fit=crop&w=800&q=60')
post_11 = Post.new({
    description: Faker::Food.description,
    chef_id: chef_6.id
})
post_11.photo.attach(io: post_11_picture, filename: 'post11.png', content_type: 'image/png')
post_11.save!

post_12_picture = URI.open('https://i.pinimg.com/474x/6b/b3/ae/6bb3ae214ffcb5a9f43cda7e668f87f4.jpg')
post_12 = Post.new({
    description: Faker::Food.description, 
    chef_id: chef_6.id
})
post_12.photo.attach(io: post_12_picture, filename: 'post12.png', content_type: 'image/png')
post_12.save!

post_13_picture = URI.open('https://i.pinimg.com/474x/ee/96/3b/ee963bcbce954d74430aa7a5a1b06848.jpg')
post_13 = Post.new({
    description: Faker::Food.description, 
    chef_id: chef_7.id
})
post_13.photo.attach(io: post_13_picture, filename: 'post13.png', content_type: 'image/png')
post_13.save!

post_14_picture = URI.open('https://i.pinimg.com/474x/e8/53/0c/e8530cc05e5102e1ae5b14772efb4ae5.jpg')
post_14 = Post.new({
    description: Faker::Food.description, 
    chef_id: chef_7.id
})
post_14.photo.attach(io: post_14_picture, filename: 'post14.png', content_type: 'image/png')
post_14.save!

post_15_picture = URI.open('https://i.pinimg.com/474x/e9/31/1e/e9311e4e4b9103331e903ab6f4d8c5ac.jpg')
post_15 = Post.new({
    description: Faker::Food.description, 
    chef_id: chef_8.id
})
post_15.photo.attach(io: post_15_picture, filename: 'post15.png', content_type: 'image/png')
post_15.save!

post_16_picture = URI.open('https://i.pinimg.com/474x/9e/3f/c4/9e3fc4802cdf34f9a9fc1a267f342033.jpg')
post_16 = Post.new({
    description: Faker::Food.description, 
    chef_id: chef_8.id
})
post_16.photo.attach(io: post_16_picture, filename: 'post16.png', content_type: 'image/png')
post_16.save!

post_17_picture = URI.open('https://i.pinimg.com/474x/73/6b/36/736b369a0dfb92b320e5ca56582197e4.jpg')
post_17 = Post.new({
    description: Faker::Food.description, 
    chef_id: chef_9.id
})
post_17.photo.attach(io: post_17_picture, filename: 'post17.png', content_type: 'image/png')
post_17.save!

post_18_picture = URI.open('https://i.pinimg.com/474x/b2/5c/bb/b25cbb825bf718e0f549080bfbffc2bf.jpg')
post_18 = Post.new({
    description: Faker::Food.description, 
    chef_id: chef_9.id
})
post_18.photo.attach(io: post_18_picture, filename: 'post18.png', content_type: 'image/png')
post_18.save!

post_19_picture = URI.open('https://i.pinimg.com/474x/40/06/e3/4006e36d8fc37eb64de6680783e3b7d0.jpg')
post_19 = Post.new({
    description: Faker::Food.description, 
    chef_id: chef_10.id
})
post_19.photo.attach(io: post_19_picture, filename: 'post19.png', content_type: 'image/png')
post_19.save!

post_20_picture = URI.open('https://i.pinimg.com/474x/9d/d3/73/9dd3736e9d678467b1143a124a617f4f.jpg')
post_20 = Post.new({
    description: Faker::Food.description, 
    chef_id: chef_10.id
})
post_20.photo.attach(io: post_20_picture, filename: 'post20.png', content_type: 'image/png')
post_20.save!

puts "Creating Menus"

menu_1_picture_1 = URI.open('https://images.unsplash.com/photo-1553174798-75cbea6e758e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8ZnJlc2glMjBjcmFifGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
menu_1_picture_2 = URI.open('https://images.unsplash.com/photo-1467003909585-2f8a72700288?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cmVzdGF1cmFudCUyMHBsYXRlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
paper_menu_picture_1 = URI.open('https://i.pinimg.com/originals/15/f6/19/15f61972261c3ea32b1339dae2234bbd.png')
menu_1 = Menu.new({
    title: "Summer Fish Tasting Menu",
    chefs_note: Faker::Lorem.sentence(word_count: 100),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "Spanish",
    chef_id: chef_1.id
})
menu_1.photos.attach(io: menu_1_picture_1, filename: 'menu_1.png', content_type: 'image/png')
menu_1.photos.attach(io: menu_1_picture_2, filename: 'menu_1_2.png', content_type: 'image/png')
menu_1.photos.attach(io: paper_menu_picture_1, filename: 'paper_menu_picture_1.png', content_type: 'image/png')
menu_1.save!

# ---

menu_2_picture_1 = URI.open('https://images.unsplash.com/photo-1515668236457-83c3b8764839?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8cmVzdGF1cmFudCUyMHBsYXRlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
menu_2_picture_2 = URI.open('https://images.unsplash.com/photo-1601002177343-070d8f2d3496?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hlZiUyMGNvb2tpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
paper_menu_picture_2 = URI.open('https://i.pinimg.com/736x/b5/5e/ae/b55eae4cbb56e16ea50bd60918c0a09a.jpg')
menu_2 = Menu.new({
    title: "5 course winter menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "French",
    chef_id: chef_1.id
})
menu_2.photos.attach(io: menu_2_picture_1, filename: 'menu_2.png', content_type: 'image/png')
menu_2.photos.attach(io: menu_2_picture_2, filename: 'menu_2_2.png', content_type: 'image/png')
menu_2.photos.attach(io: paper_menu_picture_2, filename: 'paper_menu_picture_2.png', content_type: 'image/png')
menu_2.save!

# ---

menu_3_picture_1 = URI.open('https://images.unsplash.com/photo-1484325881845-65073528922e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fHJlc3RhdXJhbnQlMjBwbGF0ZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
menu_3_picture_2 = URI.open('https://images.unsplash.com/photo-1488992783499-418eb1f62d08?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fHJlc3RhdXJhbnQlMjBwbGF0ZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
paper_menu_picture_3 = URI.open('https://i.pinimg.com/originals/15/f6/19/15f61972261c3ea32b1339dae2234bbd.png')
menu_3 = Menu.new({
    title: "Summer menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "French",
    chef_id: chef_1.id
})
menu_3.photos.attach(io: menu_3_picture_1, filename: 'menu_3.png', content_type: 'image/png')
menu_3.photos.attach(io: menu_3_picture_2, filename: 'menu_3_2.png', content_type: 'image/png')
menu_3.photos.attach(io: paper_menu_picture_3, filename: 'paper_menu_picture_3.png', content_type: 'image/png')
menu_3.save!

menu_4_picture_1 = URI.open('https://images.unsplash.com/photo-1611657365907-1ca5d9799f59?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2hlZnN8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
menu_4_picture_2 = URI.open('https://images.unsplash.com/photo-1499125562588-29fb8a56b5d5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fGNoZWZzJTIwY29va2luZ3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
paper_menu_picture_4 = URI.open('https://i.pinimg.com/originals/86/72/79/867279b09ad4cd09af709de51825372f.png')
menu_4 = Menu.new({
    title: "Special atlantic fish menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "Spanish",
    chef_id: chef_2.id
})
menu_4.photos.attach(io: menu_4_picture_1, filename: 'menu_4.png', content_type: 'image/png')
menu_4.photos.attach(io: menu_4_picture_2, filename: 'menu_4_2.png', content_type: 'image/png')
menu_4.photos.attach(io: paper_menu_picture_4, filename: 'paper_menu_picture_4.png', content_type: 'image/png')
menu_4.save!

menu_5_picture_1 = URI.open('https://images.unsplash.com/photo-1601001815894-4bb6c81416d7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzN8fGNoZWZzJTIwY29va2luZ3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
menu_5_picture_2 = URI.open('https://i.pinimg.com/474x/d0/28/fa/d028fad4c1cd8550e312e2a90c86ad76.jpg')
paper_menu_picture5 = URI.open('https://i.pinimg.com/originals/9b/2d/e5/9b2de504b88d0e10c08f260a3d2ea5cf.jpg')
menu_5 = Menu.new({
    title: "Scottish menu - December",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "Traditional European",
    chef_id: chef_3.id
})
menu_5.photos.attach(io: menu_5_picture_1, filename: 'menu_5.png', content_type: 'image/png')
menu_5.photos.attach(io: menu_5_picture_2, filename: 'menu_5_2.png', content_type: 'image/png')
menu_5.photos.attach(io: paper_menu_picture5, filename: 'paper_menu_picture_5.png', content_type: 'image/png')
menu_5.save!

menu_6_picture_1 = URI.open('https://i.pinimg.com/474x/e5/32/b0/e532b0f5dfc750c26c4a1eeb268b827b.jpg')
menu_6_picture_2 = URI.open('https://i.pinimg.com/474x/1d/4f/23/1d4f236a5ba2869f1fce3982f48e30a8.jpg')
paper_menu_picture_6 = URI.open('https://i.pinimg.com/474x/d1/8c/f4/d18cf4bf48c2686a00ee80b71ffb1abf.jpg')
menu_6 = Menu.new({
    title: "August game menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "British",
    chef_id: chef_3.id
})
menu_6.photos.attach(io: menu_6_picture_1, filename: 'menu_6.png', content_type: 'image/png')
menu_6.photos.attach(io: menu_6_picture_2, filename: 'menu_6_2.png', content_type: 'image/png')
menu_6.photos.attach(io: paper_menu_picture_6, filename: 'paper_menu_picture_6.png', content_type: 'image/png')
menu_6.save!

menu_7_picture_1 = URI.open('https://i.pinimg.com/474x/f2/6a/9d/f26a9db5769c08c1fad743e1789f7c6e.jpg')
menu_7_picture_2 = URI.open('https://i.pinimg.com/564x/7a/18/d7/7a18d781efc4aed6c184ed0af8ae23e9.jpg')
paper_menu_picture_7 = URI.open('https://i.pinimg.com/originals/a3/36/92/a33692570fc1e850ba4f725c1d477009.jpg')
menu_7 = Menu.new({
    title: "July menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "French",
    chef_id: chef_4.id
})
menu_7.photos.attach(io: menu_7_picture_1, filename: 'menu_7.png', content_type: 'image/png')
menu_7.photos.attach(io: menu_7_picture_2, filename: 'menu_7_2.png', content_type: 'image/png')
menu_7.photos.attach(io: paper_menu_picture_7, filename: 'paper_menu_picture_7.png', content_type: 'image/png')
menu_7.save!

menu_8_picture_1 = URI.open('https://i.pinimg.com/474x/f0/0e/56/f00e56494550ac5dd3fa1b857809d266.jpg')
menu_8_picture_2 = URI.open('https://i.pinimg.com/474x/a3/fc/6b/a3fc6bece7c6d09cf30dbd92e082f4bb.jpg')
paper_menu_picture_8 = URI.open('https://cdn.vox-cdn.com/thumbor/z1XQ9An1ItIdq7IELvMtSmJ7UyI=/1400x0/filters:no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/20064045/unnamed__2_.png')
menu_8 = Menu.new({
    title: "January winter menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "British",
    chef_id: chef_4.id
})
menu_8.photos.attach(io: menu_8_picture_1, filename: 'menu_8.png', content_type: 'image/png')
menu_8.photos.attach(io: menu_8_picture_2, filename: 'menu_8_2.png', content_type: 'image/png')
menu_8.photos.attach(io: paper_menu_picture_8, filename: 'paper_menu_picture_8.png', content_type: 'image/png')
menu_8.save!

menu_9_picture_1 = URI.open('https://i.pinimg.com/474x/f4/0a/d8/f40ad833a9a69e2f7098f3a7a1d8a1f7.jpg')
menu_9_picture_2 = URI.open('https://i.pinimg.com/474x/9f/2c/d5/9f2cd5c1f5ffc8d46f32c79466a10579.jpg')
paper_menu_picture_9 = URI.open('https://i.pinimg.com/originals/74/35/d7/7435d7b12a801da46dab3f2fcad39fac.jpg')
menu_9 = Menu.new({
    title: "April seafood menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "Italian",
    chef_id: chef_5.id
})
menu_9.photos.attach(io: menu_9_picture_1, filename: 'menu_9.png', content_type: 'image/png')
menu_9.photos.attach(io: menu_9_picture_2, filename: 'menu_9_2.png', content_type: 'image/png')
menu_9.photos.attach(io: paper_menu_picture_9, filename: 'paper_menu_picture_9.png', content_type: 'image/png')
menu_9.save!

menu_10_picture_1 = URI.open('https://i.pinimg.com/474x/24/c7/05/24c70509dc0abdc78b41ff88305675ef.jpg')
menu_10_picture_2 = URI.open('https://i.pinimg.com/474x/d4/00/f6/d400f6a241a135446cdb4ead362634bc.jpg')
paper_menu_picture_10 = URI.open('https://i.dailymail.co.uk/i/pix/2015/01/30/253146E500000578-2933093-image-a-21_1422626656093.jpg')
menu_10 = Menu.new({
    title: "Trial menu - Summer",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "Scandinavian",
    chef_id: chef_5.id
})
menu_10.photos.attach(io: menu_10_picture_1, filename: 'menu_10.png', content_type: 'image/png')
menu_10.photos.attach(io: menu_10_picture_2, filename: 'menu_10_2.png', content_type: 'image/png')
menu_1.photos.attach(io: paper_menu_picture_10, filename: 'paper_menu_picture_10.png', content_type: 'image/png')
menu_10.save!

menu_11_picture_1 = URI.open('https://i.pinimg.com/474x/71/2a/20/712a201af8fa4fd3d9ecdc5e432c31b6.jpg')
menu_11_picture_2 = URI.open('https://i.pinimg.com/474x/41/e0/6f/41e06fcd3a2f5072eaa4d1c4950632e1.jpg')
paper_menu_picture_11 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZNOMK4rHDmhk5BTN6s-rXYqWdj_BIWG0uHA&usqp=CAU')
menu_11 = Menu.new({
    title: "Autumn Tasting Menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "Peruvian",
    chef_id: chef_6.id
})
menu_11.photos.attach(io: menu_11_picture_1, filename: 'menu_11.png', content_type: 'image/png')
menu_11.photos.attach(io: menu_11_picture_2, filename: 'menu_11_2.png', content_type: 'image/png')
menu_11.photos.attach(io: paper_menu_picture_11, filename: 'paper_menu_picture_11.png', content_type: 'image/png')
menu_11.save!

menu_12_picture_1 = URI.open('https://i.pinimg.com/474x/2b/f4/8b/2bf48b70dbad0a4eea622c936a028bbe.jpg')
menu_12_picture_2 = URI.open('https://i.pinimg.com/474x/24/c7/05/24c70509dc0abdc78b41ff88305675ef.jpg')
paper_menu_picture_12 = URI.open('https://i.pinimg.com/236x/1a/7d/ff/1a7dff3813150a4080eab22cef01ffba.jpg')
menu_12 = Menu.new({
    title: "Winter Tasting Menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "Israeli",
    chef_id: chef_6.id
})
menu_12.photos.attach(io: menu_12_picture_1, filename: 'menu_12.png', content_type: 'image/png')
menu_12.photos.attach(io: menu_12_picture_2, filename: 'menu_12_2.png', content_type: 'image/png')
menu_12.photos.attach(io: paper_menu_picture_12, filename: 'paper_menu_picture_12.png', content_type: 'image/png')
menu_12.save!

menu_13_picture_1 = URI.open('https://i.pinimg.com/474x/65/11/bd/6511bddf6cc7ff10d8710ba2d3445d6d.jpg')
menu_13_picture_2 = URI.open('https://i.pinimg.com/474x/d4/00/f6/d400f6a241a135446cdb4ead362634bc.jpg')
paper_menu_picture_13 = URI.open('https://www.gotoaskanne.com/wp-content/uploads/2019/01/Marcos-kitchen-dinner-menu-1.jpg')
menu_13 = Menu.new({
    title: "Summer Trial Menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "Nordic",
    chef_id: chef_7.id
})
menu_13.photos.attach(io: menu_13_picture_1, filename: 'menu_13.png', content_type: 'image/png')
menu_13.photos.attach(io: menu_13_picture_2, filename: 'menu_13_2.png', content_type: 'image/png')
menu_13.photos.attach(io: paper_menu_picture_13, filename: 'paper_menu_picture_13.png', content_type: 'image/png')
menu_13.save!

menu_14_picture_1 = URI.open('https://i.pinimg.com/474x/b6/ef/f5/b6eff5efd85cdb144460798260d1953a.jpg')
menu_14_picture_2 = URI.open('https://i.pinimg.com/474x/cb/df/62/cbdf62cbaab17ad794c9da1a698a3458.jpg')
paper_menu_picture_14 = URI.open('https://i.pinimg.com/236x/1a/7d/ff/1a7dff3813150a4080eab22cef01ffba.jpg')
menu_14 = Menu.new({
    title: "Spring Vegetarian Tasting Menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "Scandinavian",
    chef_id: chef_7.id
})
menu_14.photos.attach(io: menu_14_picture_1, filename: 'menu_14.png', content_type: 'image/png')
menu_14.photos.attach(io: menu_14_picture_2, filename: 'menu_14_2.png', content_type: 'image/png')
menu_14.photos.attach(io: paper_menu_picture_14, filename: 'paper_menu_picture_14.png', content_type: 'image/png')
menu_14.save!

menu_15_picture_1 = URI.open('https://i.pinimg.com/474x/b9/ec/11/b9ec110874c66e2733401b336c6f5a67.jpg')
menu_15_picture_2 = URI.open('https://i.pinimg.com/474x/9a/8c/55/9a8c5568c7b2f7843cf387a75e9ed41b.jpg')
paper_menu_picture_15 = URI.open('https://thechosentable.files.wordpress.com/2018/12/magnolia-new-years-eve-dinner-2018-1.jpg?w=288&h=408')
menu_15 = Menu.new({
    title: "July Tasting Menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "French",
    chef_id: chef_8.id
})
menu_15.photos.attach(io: menu_15_picture_1, filename: 'menu_15.png', content_type: 'image/png')
menu_15.photos.attach(io: menu_15_picture_2, filename: 'menu_15_2.png', content_type: 'image/png')
menu_15.photos.attach(io: paper_menu_picture_15, filename: 'paper_menu_picture_15.png', content_type: 'image/png')
menu_15.save!

menu_16_picture_1 = URI.open('https://i.pinimg.com/474x/b5/39/5e/b5395edf7035ae29f1a28e15eeeae4f4.jpg')
menu_16_picture_2 = URI.open('https://i.pinimg.com/474x/e5/49/23/e54923cbeff5e5a8333ab8e44942801c.jpg')
paper_menu_picture_16 = URI.open('http://www.lacartes.com/images/business/38963/118039/m/284473.jpg')
menu_16 = Menu.new({
    title: "Truffle Menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "Italian",
    chef_id: chef_8.id
})
menu_16.photos.attach(io: menu_16_picture_1, filename: 'menu_16.png', content_type: 'image/png')
menu_16.photos.attach(io: menu_16_picture_2, filename: 'menu_16_2.png', content_type: 'image/png')
menu_16.photos.attach(io: paper_menu_picture_16, filename: 'paper_menu_picture_16.png', content_type: 'image/png')
menu_16.save!

menu_17_picture_1 = URI.open('https://i.pinimg.com/474x/57/9e/06/579e065a4ae98d4e7af945e7d7358dae.jpg')
menu_17_picture_2 = URI.open('https://i.pinimg.com/474x/a4/c7/43/a4c743b75977b24aa81d955aa2018df4.jpg')
paper_menu_picture_17 = URI.open('https://laughfrodisiac.com//wp-content/uploads/2019/02/uploads1854185438681471876518.png')
menu_17 = Menu.new({
    title: "Sashimi Tasting Menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "Japanese",
    chef_id: chef_9.id
})
menu_17.photos.attach(io: menu_17_picture_1, filename: 'menu_17.png', content_type: 'image/png')
menu_17.photos.attach(io: menu_17_picture_2, filename: 'menu_17_2.png', content_type: 'image/png')
menu_17.photos.attach(io: paper_menu_picture_17, filename: 'paper_menu_picture_17.png', content_type: 'image/png')
menu_17.save!

menu_18_picture_1 = URI.open('https://i.pinimg.com/474x/e4/13/04/e41304920f5f770c8de6f55472b24fb7.jpg')
menu_18_picture_2 = URI.open('https://i.pinimg.com/474x/82/bd/30/82bd30c0f591fa6f26b3e2aea54ff6d3.jpg')
paper_menu_picture_18 = URI.open('https://www.kilronancastle.ie/wp-content/uploads/2020/11/Ala-Carte-Vegan-Vegetarian.png')
menu_18 = Menu.new({
    title: "Winter Game Menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "British",
    chef_id: chef_9.id
})
menu_18.photos.attach(io: menu_18_picture_1, filename: 'menu_18.png', content_type: 'image/png')
menu_18.photos.attach(io: menu_18_picture_2, filename: 'menu_18_2.png', content_type: 'image/png')
menu_18.photos.attach(io: paper_menu_picture_18, filename: 'paper_menu_picture_18.png', content_type: 'image/png')
menu_18.save!

menu_19_picture_1 = URI.open('https://i.pinimg.com/474x/d6/f3/0b/d6f30b4df844574232b92fc11649e60b.jpg')
menu_19_picture_2 = URI.open('https://i.pinimg.com/474x/6a/c3/df/6ac3dfdd3a88f23146c2114869eae1d0.jpg')
paper_menu_picture_19 = URI.open('https://1.bp.blogspot.com/-RtO4VpSjMVM/XBIdFX517GI/AAAAAAAA2CQ/Y4i5touLaUAxrvLXXX85lI1i6wwXSS5QgCEwYBhgL/s1600/menu-SS-IL-TINO-LR-1.jpg')
menu_19 = Menu.new({
    title: "Summer Seafood Tasting Menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "Spanish",
    chef_id: chef_10.id
})
menu_19.photos.attach(io: menu_19_picture_1, filename: 'menu_19.png', content_type: 'image/png')
menu_19.photos.attach(io: menu_19_picture_2, filename: 'menu_19_2.png', content_type: 'image/png')
menu_19.photos.attach(io: paper_menu_picture_19, filename: 'paper_menu_picture_19.png', content_type: 'image/png')
menu_19.save!

menu_20_picture_1 = URI.open('https://i.pinimg.com/474x/27/95/eb/2795eb8eeed809b579ffa3424a685bf1.jpg')
menu_20_picture_2 = URI.open('https://i.pinimg.com/474x/a5/bd/71/a5bd713af673cdad613dc4d4a44e29b2.jpg')
paper_menu_picture_20 = URI.open('http://www.lacartes.com/images/business/38963/118039/m/284471.jpg')
menu_20 = Menu.new({
    title: "Spring Tasting Menu",
    chefs_note: Faker::Lorem.sentence(word_count: 20),
    price: Faker::Number.decimal(l_digits: 2),
    cuisine: "German",
    chef_id: chef_10.id
})
menu_20.photos.attach(io: menu_20_picture_1, filename: 'menu_20.png', content_type: 'image/png')
menu_20.photos.attach(io: menu_20_picture_2, filename: 'menu_20_2.png', content_type: 'image/png')
menu_20.photos.attach(io: paper_menu_picture_20, filename: 'paper_menu_picture_20.png', content_type: 'image/png')
menu_20.save!



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

# Chef 1 followers

follower_11 = Follower.create!({
    chef_id: chef_1.id,
    user_id: user_2.id
})

follower_12 = Follower.create!({
    chef_id: chef_1.id,
    user_id: user_3.id
})

follower_13 = Follower.create!({
    chef_id: chef_1.id,
    user_id: user_4.id
})

follower_1 = Follower.create!({
    chef_id: chef_1.id,
    user_id: user_5.id
})

# User 1 following

follower_1 = Follower.create!({
    chef_id: chef_2.id,
    user_id: user_1.id
})

follower_1 = Follower.create!({
    chef_id: chef_3.id,
    user_id: user_1.id
})

follower_1 = Follower.create!({
    chef_id: chef_4.id,
    user_id: user_1.id
})

follower_1 = Follower.create!({
    chef_id: chef_5.id,
    user_id: user_1.id
})

follower_1 = Follower.create!({
    chef_id: chef_6.id,
    user_id: user_1.id
})

