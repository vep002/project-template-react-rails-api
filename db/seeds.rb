# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Entry.destroy_all

vee = User.create(username: "vee", password: "abc123") 
eric = User.create(username: "eric", password: "chicken")
jason = User.create(username: "jtothesun", password: "cats123")

Entry.create(user_id: jason.id, description: "I love cats", favorited: false, private: true)
Entry.create(user_id: eric.id, description: "I love chickens", favorited: false, private: true)
Entry.create(user_id: vee.id, description: "I love dogs", favorited: false, private: true)

