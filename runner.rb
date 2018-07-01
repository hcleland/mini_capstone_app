require 'unirest'

# create action

response = Unirest.post("localhost:3000/api/products",
  parameters: {
    input_name: "Nerf Gun Blaster",
    input_price: 20,
    input_image_url: "",
    input_description: "Nerf gun blaster with 20 glow-in-the-dark bullets." 
  }
)

p response.body