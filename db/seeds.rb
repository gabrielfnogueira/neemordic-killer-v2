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
  { name: 'Bistrôs', group: firstGroup },
  { name: 'Frente ao ponto', group: firstGroup },
  { name: 'Puffs', group: firstGroup },
  { name: 'Sala ADM', group: firstGroup },
  { name: 'Salinha da amizade', group: firstGroup }
])

weapons = Weapon.create([
  { name: 'Almofada das poltronas da sala de reunião', group: firstGroup },
  { name: 'Caneca gigante do Oriani', group: firstGroup },
  { name: 'Nerf do Gabriel', group: firstGroup },
  { name: 'Puff', group: firstGroup },
  { name: 'Tequila José Cuervo', group: firstGroup }
])

secondGroup = groups.second

places2 = Place.create([
  { name: 'linx sala', group: secondGroup },
  { name: 'linx ponto', group: secondGroup },
  { name: 'linx cozinha', group: secondGroup },
  { name: 'linx banheiro', group: secondGroup }
])

weapons2 = Weapon.create([
  { name: 'linx badge', group: secondGroup },
  { name: 'linx cup', group: secondGroup },
  { name: 'linx book', group: secondGroup }
])
