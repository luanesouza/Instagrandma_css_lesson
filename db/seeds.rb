# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Grandma.create([{
  name: "Erics grandma",
  username: "granny_the_coder",
  bio: "Trying this Instagranny thing",
  password: "123"
  }])

  Image.create([{
    url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgOrH7QoFgxVIe291XT73Gz_tb0r-joM4rWSTqbAU-PyPJT-L_",
    grandma_id: 1},
    {
    url: "https://ak4.picdn.net/shutterstock/videos/19553224/thumb/8.jpg",
    grandma_id: 1},
    {
    url: "https://image.shutterstock.com/image-photo/little-asian-girl-using-mobile-260nw-422205925.jpg",
    grandma_id: 1},
    {
    url: "https://image.shutterstock.com/image-photo/little-asian-girl-using-mobile-260nw-422205925.jpg",
    grandma_id: 1},])
