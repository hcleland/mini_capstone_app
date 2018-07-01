require 'unirest'


# create action
# response = Unirest.post("localhost:3000/api/products",
#    parameters: {
#      input_name: "American Girl Doll",
#      input_price: 100,
#      input_image_url: "",
#      input_description: "From the past to present and for girls of all ages." 
#   }
# )

# p response.body

 # update action
 response = Unirest.patch("localhost:3000/api/products/2",
   parameters: {
     input_image_url: ""
   }
 )

# p response.body

# response = Unirest.delete("localhost:3000/api/products/4")

# p response.body

# response = Unirest.delete("localhost:3000/api/products/3")

# p response.body

