require "open-uri"
require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dog = Pet.create(name: "George", species: "dog", availability: false, pet_ability: "sleeps", description: "fluffy", photo: "link_of_image", location: "Vienna" )
cat = Pet.create(name: "Kelly", species: "dragon", availability: true, pet_ability: "walks in the park", description: "fluffy", photo: "polaroid", location: "Paris")
dragon = Pet.create(name: "Tom", species: "dragon", availability: false, pet_ability: "dances on the roof", description: "fluffy", photo: "polaroid", location: "Poznan")
lizard = Pet.create(name: "Drake", species: "dog", availability: true, pet_ability: "tricks or treats", description: "fluffy", photo: "polaroid", location: "Berlin")


