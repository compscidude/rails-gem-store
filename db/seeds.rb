# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




# 3 Spending
Item.create(name: "Item 1", gem: 50, item_type: 0)
Item.create(name: "Item 2", gem: 80, item_type: 0)
Item.create(name: "Item 3", gem: 150, item_type: 0)

# Obtain Gems
Item.create(name: "100 gems", gem: 100, price: 10, item_type: 1)
Item.create(name: "200 gems", gem: 200, price: 18, item_type: 1)
Item.create(name: "300 gems", gem: 300, price: 25, item_type: 1)
Item.create(name: "500 gems", gem: 500, price: 40, item_type: 1)
Item.create(name: "1000 gems", gem: 1000, price: 70, item_type: 1)
Item.create(name: "5000 gems", gem: 5000, price: 350, item_type: 1)