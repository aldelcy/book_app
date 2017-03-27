# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create([{first_name:'Al', last_name:'Delcy', picture:'aldelcy.jpg', age:Time.now - 20.years},
# 			 {first_name:'Bob', last_name:'Mathews', picture:'bobmathews.jpg', age:Time.now - 20.years},
# 			 {first_name:'Carol', last_name:'Jones', picture:'caroljones.jpg', age:Time.now - 20.years}])

Book.create([{name:'The Martian', author:'Andy Weir', cover:'the_martian.png', isbn:'isbn-500-7-5533-92', quantity:12, published:Time.now - 1.month, category:'romance, adventure', num_issued:0},
			 {name:'Making Things Happen', author:'Elisabeth Murphy', cover:'making_things_happen.png', isbn:'isbn-386-8-8493-55', quantity:20, published:Time.now - 7.months, category:'action', num_issued:0},
			 {name:'Woods', author:'Hurbert Homes', cover:'woods.jpg', isbn:'isbn-480-6-4420-94', quantity:12, published:Time.now - 5.months, category:'action', num_issued:0},
			 {name:'Boring Girls', author:'Sara Taylor', cover:'boring_girls.jpg', isbn:'isbn-116-0-7225-75', quantity:18, published:Time.now - 1.year, category:'adventure', num_issued:0},
			 {name:'Enchantment', author:'Guy Kawasaki', cover:'enchantment.jpg', isbn:'isbn-171-2-8490-07', quantity:11, published:Time.now - 9.months, category:'romance', num_issued:0},
			 {name:'Green Eggs and Ham', author:'Dr. Seuss', cover:'green_eggs_and_ham.jpg', isbn:'isbn-913-1-0082-57', quantity:15, published:Time.now - 7.months, category:'action', num_issued:0},
			 {name:'Infomocracy', author:'Malka Older', cover:'infomocracy.jpg', isbn:'isbn-804-9-7884-44', quantity:15, published:Time.now - 3.months, category:'action', num_issued:0},
			 {name:'Pieces of Light', author:'Charles Fernyghough', cover:'pieces_of_light.jpg', isbn:'isbn-853-0-8778-68', quantity:15, published:Time.now - 4.months, category:'action', num_issued:0},
			 {name:'The Girl who Fell from the Sky', author:'Heidi Durrow', cover:'the_girl_who_fell_from_the_sky.jpg', isbn:'isbn-406-5-4099-11', quantity:15, published:Time.now - 11.months, category:'action', num_issued:0},
			 {name:'The Trees', author:'Ali Shaw', cover:'the_trees.jpg', isbn:'isbn-047-0-3123-47', quantity:15, published:Time.now - 6.years, category:'action', num_issued:0},
			 {name:'To You The Stars', author:'Wendy Cartright', cover:'to_you_the_stars.jpg', isbn:'isbn-145-2-4311-75', quantity:15, published:Time.now - 4.years, category:'action', num_issued:0},
			 {name:'Vampire Academy Last Sacrifice', author:'Richelle Mead', cover:'vampire_academy_last_sacrifice.jpg', isbn:'isbn-164-2-7331-06', quantity:5, published:Time.now - 3.months, category:'romance', num_issued:0}])