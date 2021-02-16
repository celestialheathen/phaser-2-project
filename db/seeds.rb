# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ps5 = Item.create(name: "PlayStation 5", price: 499, stock: 5, description: "Next Generation Gaming Console", image: "ps5")
ps5d = Item.create(name: "PlayStation 5 Digitial Edition", price: 399, stock: 15, description: "Digital gaming console", image: "ps5d")

xbx = Item.create(name: "Xbox Series X", price: 499, stock: 1, description: "Microsoft Gaming Console", image: "xbox_x")
xbs = Item.create(name: "Xbox Series S", price: 299, stock: 99, description: "Microsoft digitalGaming Console", image: "xbox_s")

nds = Item.create(name: "Nintendo Switch", price: 299, stock: 54, description: "Nintendo handheld gaming console", image: "switch")
ndsl = Item.create(name: "Nintendo Switch Lite", price: 199, stock: 9, description: "Nintendo handheld", image: "switch_l")

cr1 = Item.create(name: "Chicken rocks", price: 1, stock: 99, description: "A chicken rock....", image: "chicken")

user1 = Customer.create(username: "gary", password: "gary")
user2 = Customer.create(username: "larry", password: "larry")

