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
    titles = ["Bottled Water", "Water Purifier", "Water Tablets", "Canteen",
             "Batteries", "Generator", "Gasoline", "Propane",
             "Cell Phone", "Ham Radio", "Transister Radio", "Walkie Talkie",
             "Beans", "Tuna Fish", "Baby Formula", "Food Box",
             "Pants", "Shirts", "Socks", "Rain Gear"]

    description = ["Fresh bottled water for drinking", "Purify any source of water", "Water tablets to purify your water", "Great storage container for water",
                   "Duracell batteries for your electronics", "Portable power to get you up and running", "Keep the car moving", "Perfect for the grill",
                   "Emergency cell phone", "Stay in touch with others", "Communicate with civilization", "Allow the family to communicate",
                   "Tasty canned beans", "Tasty tuna fish - lots of protein", "Feed your baby", "Enough food for a family of 4",
                   "Warm pants for your legs", "Warm shirts to stay dry", "Clean socks", "Stay dry in rainy weather"]

    price = (1000..500000).to_a
    weight = (10..500).to_a
    quantity_available = (10..100).to_a
    unit_size = (1..10).to_a
    boolean = %w(true true true true true true true true true false)

    titles.each_with_index do |title, i| 
      Item.create(title:              "#{title}",
                  description:        "#{description[i]}",
                  price:              price.sample,
                  weight:             weight.sample,
                  quantity_available: quantity_available.sample, 
                  unit_size:          unit_size.sample,
                  shippable:          "#{boolean.sample}",
                  retired:            "#{boolean.sample}",
                  image:              "assets/logo.png")
      end
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
