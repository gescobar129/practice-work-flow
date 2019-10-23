# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.destroy_all
Gallery.destroy_all
Painting.destroy_all

artist1 = Artist.create(name: "Leo", age: 100, experience: 1000)
artist2 = Artist.create(name: "Vincent", age: 42, experience: 384)
artist3 = Artist.create(name: "Mark", age: 77, experience: 56)
artist4 = Artist.create(name: "Ralph", age: 150, experience: 433)
artist5 = Artist.create(name: "Maria", age: 33, experience: 76)
artist6 = Artist.create(name: "Rose", age: 10, experience: 950)

gal1 = Gallery.create(name: "gallery 1", location: "NY")
gal2 = Gallery.create(name: "gallery 2", location: "LA")
gal3 = Gallery.create(name: "gallery 3", location: "BK")
gal4 = Gallery.create(name: "gallery 4", location: "NJ")
gal5 = Gallery.create(name: "gallery 5", location: "SF")
gal6 = Gallery.create(name: "gallery 6", location: "FL")

5.times do
    Painting.create(name: Faker::Name.name, price: Faker::Number.between(from: 10000, to: 100000), artist_id: Artist.ids.sample, gallery_id: Gallery.ids.sample)
  end

#testing code here