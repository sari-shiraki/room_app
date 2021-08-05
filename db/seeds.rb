# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Room.create(room_name:'いい部屋', room_introduction:'素晴らしい部屋です', price:3000, adress:'東京都')
Room.create(room_name:'すばらしい部屋', room_introduction:'景色がいいです', price:4000, adress:'北海道')
Room.create(room_name:'綺麗な部屋', room_introduction:'綺麗です', price:5000, adress:'岐阜県')