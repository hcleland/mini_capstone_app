# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Product.create({name: "WNYX Mug", price: "2.0", description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape", image_url: "google.com"})

#Supplier.create({name: "Big Red Truck", email: "brtruck@mail.com", phone_number: "5555555"})
#Supplier.create({name: "The Yellow Company", email: "tyc@mail.com", phone_number: "6666666"})
#Supplier.create({name: "We Bring Your Stuff", email: "stuff@mail.com", phone_number: "7777777"})

# associate the products with a supplier

# suppliers = Supplier.all

# products = Product.all

# products.each do |product|
#   product.supplier_id = suppliers.sample.id
#   product.save
# end


# make some new images
# make a new image for each product in the products table

products = Product.all

products.each do |product|
  Image.create(url: product.image_url, product_id: product.id)
end