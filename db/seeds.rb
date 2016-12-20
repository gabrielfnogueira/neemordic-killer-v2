# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
groups = Group.create([
  { name: 'Neemu+Chaordic' },
  { name: 'LinxGroup' },
  { name: 'Juqueti' }
])

firstGroup = groups.first

places = Place.create([
  { name: 'Almofada das poltronas da sala de reunião', group: firstGroup },
  { name: 'Caneca gigante do Oriani', group: firstGroup },
  { name: 'Nerf do Gabriel', group: firstGroup },
  { name: 'Puff', group: firstGroup },
  { name: 'Tequila José Cuervo', group: firstGroup }
])
