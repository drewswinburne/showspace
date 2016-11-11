# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.destroy_all

newband = Artist.create(name: "All Ball", bio: "Cricket and Geoff", img_url: "asdf", music_url: "http://www.google.com")
coolband = Artist.create(name: "Beach House", bio: "Victoria and Alex", img_url: "asdf", music_url: "http://www.google.com")
anyband = Artist.create(name: "Permenant Waves", bio: "Jeff's new band", img_url: "asdf", music_url: "http://www.google.com")
funband = Artist.create(name: "Evil Sword", bio: "Costume Band", img_url: "asdf", music_url: "http://www.google.com")
