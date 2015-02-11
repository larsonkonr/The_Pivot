class Seed
  def initialize
    build_items
    build_category
    build_orders
    build_users
    build_items_category
		build_supplier
  end

  def build_items
		categories = ["Fire", "Tornado", "Water & Food", "Hurricane", "Power", "Baby"]
    item1 = Item.create(title: "Gut Buster", description: "If it's in the store, it's in this burrito!", price: 1000, image: open("app/assets/images/gut-buster.jpg"))
    item2 = Item.create(title: "Atomic Sunrise", description: "Spicy green chili, egg, and potato burrito.", price: 850, image: open("app/assets/images/bfast-burrito.png"))
    item3 = Item.create(title: "Fiesta Especial", description: "A 4-foot party-sized burrito to share with your family and friends.", price: 8000, image:open("app/assets/images/4_foot_burrito.jpg"))
    item4 = Item.create(title: "UF burritO", description: "Monthly special. It's out of this world.", price: 689, image: open("app/assets/images/AmericanBurrito.jpg"))
    item5 = Item.create(title: "Smothered Dynamite", description: "Classic pork green chili smothered burrito, your choice of fillings.", price: 899, image: open("app/assets/images/burrito-2.png"))
    item6 = Item.create(title: "Two Torpedo Tacos", description: "Two crispy chicken tacos.", price: 500, image: open("app/assets/images/tacos.jpg"))
    item7 = Item.create(title: "Queso Quesadillas", description: "These delicious veggie dillas can be frisbeed to your door upon request.", price: 550, image: open("app/assets/images/quesadilla.png"))
    item8 = Item.create(title: "Death by Burrito", description: "That's no moon, that's a Beef Burrito smoothered in spicy green chili sauce!", price: 750, image: open("app/assets/images/7_layer_burrito.png"))
    item9 = Item.create(title: "Flaming Fajitas", description: "These veggie fajitas will set your mouth on fire.", price: 1200, image: open("app/assets/images/beast.png"))
    item10 = Item.create(title: "Breakfast Quesadilla", description: "One delicious egg, cheese, and potato dilla.", price: 650, image: open("app/assets/images/bfast-burrito.png"))
    item11 = Item.create(title: "Halo", description: "All fresh vegetables which gives you the moring shine.", price: 500, image: open("app/assets/images/bfast-burrito.png"))
    item12 = Item.create(title: "Veggie delight", description: "Eat all your veggies, tomatoes, red onions, green peppers, mushrooms and more!", price: 700, image: open("app/assets/images/7_layer_burrito.png"))
    item13 = Item.create(title: "Not Too Sweet", description: "Just enough to satisfy your sweet tooth, all sweet things.", price: 500, image: open("app/assets/images/AmericanBurrito.jpg"))
    item14 = Item.create(title: "Classic", description: "Our classic burrito with authentic flavors.", price: 800, image: open("app/assets/images/burrito-2.png"))
    item15 = Item.create(title: "Hot 'n Spicy", description: "All the hot and spicy things you can handle.", price: 1000, image: open("app/assets/images/burrito_360.png"))
    item16 = Item.create(title: "Tamale Torpedo", description: "These little tamale bombs come in one flavor: spicy!", price: 400, image: open("app/assets/images/beast.png"))
    item17 = Item.create(title: "Rice and Bombs", description: "Our slow-simmered black beans and cilantro-lime rice packaged up in individual parachute packs.", price: 300, image: open("app/assets/images/beast.png"))
    item18 = Item.create(title: "Hot Sauce Bucket", description: "Just what it sounds like: a small bucket of our house hot sauce.", price: 300, image: open("app/assets/images/beast.png"))
    item19 = Item.create(title: "Chips and Salsa", description: "A bag of chips bubble-wrapped for special delivery with a small bucket of our house hot sauce.", price: 400, image: open("app/assets/images/chips_salsa.jpg"))
    item20 = Item.create(title: "Enola Empenada", description: "This empenada is filled with cheese and our famous mushroom salsa.", price: 500, image: open("app/assets/images/beast.png"))
  end



  def build_category
    category1 = Category.create(name: "Fire", description: "Fire Fire Fire")
    category2 = Category.create(name: "Tornado", description: "Whirlwind cleanup")
    category3 = Category.create(name: "Water & Food", description: "Neccesities for the body")
    category4 = Category.create(name: "Hurricane", description: "Water damage supplies")
    category5 = Category.create(name: "Power", description: "Electronics and power supplies")
		category6 = Category.create(name: "Baby", description: "Baby supplies")
  end


  def build_users
		100.times do
			first_name = %w(Jill Mike Bil Brandon Dan Jane Konr Alex Laura Rich Steve Kim Chad Tan Timmy Tom Jack Frank Bruce Tim)
			last_name = %w(Zimmer Goolia Chadowsky Larson Shea Warbelow Smith Francis Alexia Fortonk Foo Gu Meija Cheek Zakkerz)
      fullname = "#{first_name.sample} #{last_name.sample}"
			password = "password"
 			User.create(fullname: "#{fullname}", email: "#{full_name.gsub(" ","_")}#{rand(1..1000000)}@example.com", display_name: "#{first_name.sample}", password: "#{password}", role: 0 )
		end

    user1 = User.create(fullname: "Johnny Bravo", email: "hooaa@gmail.com", display_name: "jbravo", password: "password", role: 0)
    user2 = User.create(fullname: "Rachel Warbelow", email: "demo+rachel@jumpstartlab.com", password: "password", role: 0)
    user3 = User.create(fullname: "Jeff Casmir", email: "demo+jeff@jumpstartlab.com", display_name: "j3", password: "password", role: 0)
    user4 = User.create(fullname: "Jeorge Tellez", email: "demo+jorge@jumpstartlab.com", display_name: "novohispano", password: "password", role: 0)
    user5 = User.create(fullname: "Josh Cheek", email: "demo+josh@jumpstartlab.com", display_name: "josh", password: "password", role: 1, image: "cheeky.jpg")
    user6 = User.create(fullname: "Steve Kinney", email: "demo+steve@jumpstartlab.com", display_name: "steveo", password: "password", role: 0)
    user7 = User.create(fullname: "Horace Williams", email: "demo+horace@jumpstartlab.com", display_name: "horace", password: "password", role: 0)
    user8 = User.create(fullname: "Raissa Shafer", email: "demo+raissa@jumpstartlab.com", password: "password", role: 0)
    user9 = User.create(fullname: "Josh Mejia", email: "demo+jmeija@jumpstartlab.com", display_name: "meija", password: "password", role: 0)
    user10 = User.create(fullname: "Joe Blow", email: "joe@gmail.com", display_name: "joe", password: "joe", role: 1, image: "joe_blow.jpg")
		user11 = User.create(fullname: "Joe Blow", email: "joe@gmail.com", display_name: "joe", password: "joe", role: 1, image: "joe_blow.jpg")
		
		20.times do	
			first_name = %w(Jill Mike Bil Brandon Dan Jane Konr Alex Laura Rich Steve Kim Chad Tan Timmy Tom Jack Frank Bruce Tim)
			last_name = %w(Zimmer Goolia Chadowsky Larson Shea Warbelow Smith Francis Alexia Fortonk Foo Gu Meija Cheek Zakkerz)
      fullname = "#{first_name.sample} #{last_name.sample}"
     User.create(fullname: "#{fullname}", email: "#{full_name.gsub(" ","_")}#{rand(1..1000000)}@example.com", display_name: "#{first_name.sample}", password: "password", role: 2)
		end
  end

	def build_supplier
    Supplier.create!(name: "Nado Relief",
                    address: "1500 Blake St. , CO",
                    slug: "nado",
                    description: "Emergency tornado relief supplies",
                    retired: true
    )

    Supplier.create!(name: "FireProof",
                    address: "444 Window St. , ME",
                    slug: "fireproof",
                    description: "All emergency supplies related to fire damage.",
                    retired: true
    )

    Supplier.create!(name: "Disaster Nation Warehouse",
                    address: "1431 Street St. , AL",
                    slug: "disaster-nation",
                    description: "All of your disaster supplies here!",
                    retired: true
    )

    Supplier.create!(name: "The Helpful Hands",
                    address: "1 Blake St. , CO",
                    slug: "helpful-hands",
                    description: "One stop shop for all your disaster supplies",
                    retired: true
    )

    Supplier.create!(name: "Water for the weary",
                    address: "7511 Bone St. , ME",
                    email: "water4theweary@gmail.com",
                    description: "We have all things water!.",
                    retired: true
    )

    Supplier.create!(name: "Food Nation",
                    address: "123 Blake St. , CO",
                    slug: "food-nation",
                    description: "We have all the food you need for emergency situations.",
                    retired: true
    )

   Supplier.create!(name: "From a Mile High",
                    address: "100 Dercum Square, CO",
                    slug: "mile-high-air",
                    description: "Assorted disaster supplies",
                    retired: true
    )

    Supplier.create!(name: "Hospitable World",
                    address: "8111 Lowry Boulevard , ID",
                    slug: "happy-world",
                    description: "The best in the world!.",
                    retired: true
    )

    Supplier.create!(name: "Rocky Start",
                    address: "1311 Abbot Kinney , CA",
                    slug: "stark-enterprises",
                    description: "Help you get back to the right start",
                    retired: true
    )

    Supplier.create!(name: "ReliefbyGeorge",
                    address: "9200 West Sunset Blvd , CA",
                    slug: "george worldwide",
                    description: "Yes we are more than a company.",
                    retired: true
    )
	end
end
Seed.new
