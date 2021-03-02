# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.new({
    email: "antony@gmail.com",
    password: "123456"
})

chef_1 = Chef.new({
    first_name: "Johnny",
    last_name: "Smith",
    email: "johnny@chef.com",
    inspiration: "blah blah blah",
    work_history: "blah blah blah",
    mission: "blah blah blah",
    restaurant_id: 1
})

restaurant_1 = Restaurant.new({
    name: "Maggies",
    location: "1 Picadilly, London, SW2 5AQ"
})

menu_1 = Menu.new({
    title: "Spring menu",
    price: 50,
    chefs_note: "This is a very delicious menu",
    cuisine: "French",
    chef_id: 1
})

post_1 = Post.new({
    description: "This is a description of a post",
    chef_id: 1
})

follower_1 = Follower.new({
    user_id: 1,
    chef_id: 1
})