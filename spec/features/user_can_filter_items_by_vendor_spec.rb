require "rails_helper"

feature "User Supplier Items" do
	
	scenario "User visits items index page" do
		user = User.create(user_attributes)
		supplier = Supplier.create(supplier_attributes)
		item = Item.create(item_attributes)
		visit items_path 
		expect(page).to have_content("water purifier")	
	end

	scenario "User filters items by a vendor" do
		supplier = Supplier.create(supplier_attributes)
		supplier2 = Supplier.create(supplier_attributes(name: "nado", slug: "nado"))
		item = supplier.items.create(item_attributes)
		item2 = supplier2.items.create(item_attributes(title: "beans", supplier_id: 2))	
		visit items_path

		find(:css, "#current_suppliers_fireproof[type='checkbox']").set(true)
		expect(page).to	have_content(item.title)
		#expect(page).to_not have_content(item2.title)
	end

	scenario "User can view item's aggregate data by clicking link" do
		supplier = Supplier.create(supplier_attributes)
		item     = supplier.items.create(item_attributes)

		visit supplier_path(supplier.slug) 
		expect(current_path).to eq("/fireproof")
	
		click_link("water purifier")
		expect(page).to have_content(item.title)
	end

	scenario "User can add supplier item to cart from supplier index" do 
		supplier = Supplier.create(supplier_attributes)
		item = supplier.items.create(item_attributes)

		visit supplier_path(supplier.slug)
		click_link_or_button "Add to Cart"
		
		within("#cart") do
			expect(page).to have_content("1")
		end
	end
end
