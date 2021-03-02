# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

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

chef_10 = Chef.new({
    first_name: "Johnny",
    last_name: "Smith",
    email: "johnny@chef.com",
    inspiration: "blah blah blah",
    work_history: "blah blah blah",
    mission: "blah blah blah",
    restaurant_id: 10
})

chef_11 = Chef.new({
    first_name: "Johnny",
    last_name: "Smith",
    email: "johnny@chef.com",
    inspiration: "blah blah blah",
    work_history: "blah blah blah",
    mission: "blah blah blah",
    restaurant_id: 11
})

chef_12 = Chef.new({
    first_name: "Johnny",
    last_name: "Smith",
    email: "johnny@chef.com",
    inspiration: "blah blah blah",
    work_history: "blah blah blah",
    mission: "blah blah blah",
    restaurant_id: 12
})

chef_13 = Chef.new({
    first_name: "Johnny",
    last_name: "Smith",
    email: "johnny@chef.com",
    inspiration: "blah blah blah",
    work_history: "blah blah blah",
    mission: "blah blah blah",
    restaurant_id: 13
})

chef_14 = Chef.new({
    first_name: "Johnny",
    last_name: "Smith",
    email: "johnny@chef.com",
    inspiration: "blah blah blah",
    work_history: "blah blah blah",
    mission: "blah blah blah",
    restaurant_id: 14
})

chef_15 = Chef.new({
    first_name: "Johnny",
    last_name: "Smith",
    email: "johnny@chef.com",
    inspiration: "blah blah blah",
    work_history: "blah blah blah",
    mission: "blah blah blah",
    restaurant_id: 15
})

chef_16 = Chef.new({
    first_name: "Johnny",
    last_name: "Smith",
    email: "johnny@chef.com",
    inspiration: "blah blah blah",
    work_history: "blah blah blah",
    mission: "blah blah blah",
    restaurant_id: 16
})

chef_17 = Chef.new({
    first_name: "Johnny",
    last_name: "Smith",
    email: "johnny@chef.com",
    inspiration: "blah blah blah",
    work_history: "blah blah blah",
    mission: "blah blah blah",
    restaurant_id: 17
})

chef_18 = Chef.new({
    first_name: "Johnny",
    last_name: "Smith",
    email: "johnny@chef.com",
    inspiration: "blah blah blah",
    work_history: "blah blah blah",
    mission: "blah blah blah",
    restaurant_id: 18
})

chef_19 = Chef.new({
    first_name: "Johnny",
    last_name: "Smith",
    email: "johnny@chef.com",
    inspiration: "blah blah blah",
    work_history: "blah blah blah",
    mission: "blah blah blah",
    restaurant_id: 19
})

chef_20 = Chef.new({
    first_name: "Johnny",
    last_name: "Smith",
    email: "johnny@chef.com",
    inspiration: "blah blah blah",
    work_history: "blah blah blah",
    mission: "blah blah blah",
    restaurant_id: 20
})
