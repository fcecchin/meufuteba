# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create(email: 'admin@example.com',  firstname: 'Sample',  lastname: 'User',  password: 'admin321',  password_confirmation: 'admin321')
u2 = User.create(email: 'tchesco@example.com',  firstname: 'Frantchesco',  lastname: 'Cecchin',  password: 'admin321',  password_confirmation: 'admin321')
u3 = User.create(email: 'xavi@example.com',  firstname: 'Xavi',  lastname: 'Hernandez',  password: 'admin321',  password_confirmation: 'admin321')
u4 = User.create(email: 'zidade@example.com',  firstname: 'Zinedine',  lastname: 'Zidane',  password: 'admin321',  password_confirmation: 'admin321')

League.create(name: "La Liga Española", user: u2)
League.create(name: "Campeonato Frances", user: u4)

Team.create(name: "Barcelona", user: u3)
Team.create(name: "Internacional", user: u2)
Team.create(name: "Bayer", user: u2)