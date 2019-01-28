# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Message.create(body: "Hey I'm a message", user: User.first)
Message.create(body: "What's up", user: User.last)
Message.create(body: "My ankle hurts", user: User.find_by(id: "3"))
