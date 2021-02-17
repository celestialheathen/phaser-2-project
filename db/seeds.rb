# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ps5 = Item.create(name: "PlayStation 5", price: 499, stock: 5, description: "Next Generation Gaming Console", image: "ps5")
ps5d = Item.create(name: "PlayStation 5 Digitial Edition", price: 399, stock: 15, description: "Digital gaming console", image: "ps5d")
ps5_controller = Item.create(name: "PlayStation 5 DualSense Wireless Controller", price: 69.99, stock: 9, description: "A gaming controller", image: "ps5c")

xbx = Item.create(name: "Xbox Series X", price: 499, stock: 1, description: "Microsoft Gaming Console", image: "xbx")
xbs = Item.create(name: "Xbox Series S", price: 299, stock: 99, description: "Microsoft digitalGaming Console", image: "xbs")
xbx_controller = Item.create(name: "Controller for Xbox Series X, Xbox Series S", price: 59.99, stock: 9, description: "Microsoft gaming controller", image: "xbc")

nds = Item.create(name: "Nintendo Switch", price: 299, stock: 54, description: "Nintendo handheld gaming console", image: "nds")
ndsl = Item.create(name: "Nintendo Switch Lite", price: 199, stock: 9, description: "Nintendo handheld", image: "ndsl")
nds_controller = Item.create(name: "Nintendo Switch Pro Controller", price: 64.99, stock: 19, description: "Nintendo gaming controller", image: "ndsc")


cr1 = Item.create(name: "Chicken rocks", price: 1, stock: 99, description: "A chicken rock....", image: "cr1")

soft_taco = Item.create(name: "Soft Taco", price: 1.29, stock: 3, description: "A taco that has a warm, flour tortilla", image: 'sot')
cruncy_taco = Item.create(name: "Crunchy Taco", price: 1.29, stock: 10, description: "A taco that has cruncy corn body", image: 'crt')
loaded_taco = Item.create(name: "Loaded Nacho Taco", price: 1.00, stock: 5, description: "A food that's super unhealthy", image: 'lot')
bacon_taco = Item.create(name: "Bacon Club Chalupa", price: 3.49, stock: 13, description: "A bacon club chalupa taco", image: 'bat')
cheese_taco = Item.create(name: "Cheesy Gordita Crunch", price: 3.59, stock: 6, description: "A cheesy taco...", image: 'cht')

user1 = Customer.create(username: "gary", password: "gary")
user2 = Customer.create(username: "larry", password: "larry")
user3 = Customer.create(username: "james", password: "james")

r1 = Review.create(customer: user1, item: ps5, rating: 4, body: "Really good, I love it")
r2 = Review.create(customer: user2, item: ps5, rating: 5, body: "Amazing, super fast shipping")