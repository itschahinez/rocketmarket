# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
Booking.destroy_all
User.destroy_all

puts 'Creating buyers'
User.create(username: "Sasha", balance: 150_000, email: 'sasha@bourgpalette.net', password: 'Pikachuuu', picture: 'https://parismatch.be/app/uploads/2019/09/pokemon-sacha-pikachu-1100x715.jpg')
puts" Sasha done"

User.create(username: "Misty", balance: 400_000, email: 'misty@cerulean.net', password: 'Staryu', picture: 'https://fr.jugomobile.com/wp-content/uploads/2021/11/Pokemon-Lhistoire-de-Misty-dans-lanime.jpg')
puts "Misty done"


puts 'Creating the seller admins'
jesse = User.create(username: "Jesse", balance: 0, admin: true, email: 'jesse@teamrocket.net', password: 'Miaous', picture: 'https://i.pinimg.com/474x/cb/bb/b1/cbbbb1a98bf9770064ac5475a3f5a802.jpg')
puts "Jesse done"
james = User.create(username: "James", balance: 0, admin: true, email: 'james@teamrocket.net', password: 'alsoMiaous', picture: 'https://static.wikia.nocookie.net/wikidoublage/images/6/60/James_%28Pokemon%29.jpg/revision/latest?cb=20191229115047&path-prefix=fr')
puts "James done"
puts 'Creating 5 pokemons'

Pokemon.destroy_all

Pokemon.create!(
  name: 'Bulbasaur',
  level: 10,
  description: 'A strange seed was planted on its back at birth. The plant sprouts and grows with this POKéMON.',
  pokemon_type: 'Grass Poison',
  picture: 'https://img.pokemondb.net/artwork/large/bulbasaur.jpg',
  price: 20_000
)

puts "POKEMON DONE"

Pokemon.create!(
  name: 'Pikachu',
  level: 75,
  description: 'When several of these POKéMON gather, their electricity could build and cause lightning storms.',
  pokemon_type: 'Electric',
  picture: 'https://img.pokemondb.net/artwork/large/pikachu.jpg',
  price: 45_000
)
puts "POKEMON DONE"
Pokemon.create!(
  name: 'Charizard',
  level: 80,
  description: 'Spits fire that is hot enough to melt boulders. Known to cause forest fires unintentionally.',
  pokemon_type: 'Fire/Flying',
  picture: 'https://img.pokemondb.net/artwork/large/charizard.jpg',
  price: 42_000
)
puts "POKEMON DONE"
Pokemon.create!(
  name: 'Wartortle',
  level: 27,
  description: 'Often hides in water to stalk unwary prey. For swimming fast, it moves its ears to maintain balance.',
  pokemon_type: "Water",
  picture: 'https://img.pokemondb.net/artwork/large/wartortle.jpg',
  price: 15_000
)
puts "POKEMON DONE"
Pokemon.create!(
  name: 'Mewtwo',
  level: 99,
  description: 'It was created by a scientist after years of horrific gene splicing and DNA engineering experiments.',
  pokemon_type: 'Psychic',
  picture: 'https://img.pokemondb.net/artwork/large/mewtwo.jpg',
  price: 250_000
)
puts "POKEMON DONE"

Pokemon.create!(
  name: 'Rattata',
  level: 5,
  description: 'Bites anything when it attacks. Small and very quick, it is a common sight in many places.',
  pokemon_type: 'Normal',
  picture: 'https://img.pokemondb.net/artwork/large/rattata.jpg',
  price: 2_000
)
puts "POKEMON DONE"

Pokemon.create!(
  name: 'Raichu',
  level: 27,
  description: 'Its long tail serves as a ground to protect itself from its own high voltage power.',
  pokemon_type: 'Electric',
  picture: 'https://img.pokemondb.net/artwork/large/raichu.jpg',
  price: 52_000
)
puts "POKEMON DONE"
Pokemon.create!(
  name: 'Graveler',
  level: 33,
  description: 'Rolls down slopes to move. It rolls over any obstacle without slowing or changing its direction.',
  pokemon_type: 'Rock/Ground',
  picture: 'https://img.pokemondb.net/artwork/large/graveler.jpg',
  price: 27_000
)
puts "POKEMON DONE"
Pokemon.create!(
  name: 'Lapras',
  level: 72,
  description: 'Water Ice A POKéMON that has been overhunted almost to extinction. It can ferry people across the water.',
  pokemon_type: 'Water/Ice',
  picture: 'https://img.pokemondb.net/artwork/large/lapras.jpg',
  price: 100_000
)
puts "POKEMON DONE"
Pokemon.create!(
  name: 'Dragonite',
  level: 102,
  description: 'An extremely rarely seen marine POKéMON. Its intelligence is said to match that of humans.',
  pokemon_type: 'Dragon/Flying',
  picture: 'https://img.pokemondb.net/artwork/large/dragonite.jpg',
  price: 90_000
)
puts "POKEMON DONE"

puts "All done"
