require "rails_helper"

RSpec.describe Item, type: :model do
  let (:order) {
    Order.create(
                 users_id: 1,
                 status: "ordered",
                 total: 1700
                 )
  }

  let (:item) {
    Item.create(
                title: "Green Chili Burrito",
                description: "Amazingly spicey burrito",
                price: 655,
								supplier_id: 1
                )
  }

  it "is valid" do
    expect(item).to be_valid
  end

  it "is invalid without a title" do
    item.title = nil
    expect(item).to be_invalid
  end

  it "is invalid without a description" do
    item.description = nil
    expect(item).to be_invalid
  end

  it "is invalid without a price" do
    item.price = nil
    expect(item).to be_invalid
  end

  it "returns an empty categories array" do
    expect(item.categories).to eq([])
  end

  it "responds to categories" do
    expect(item).to respond_to(:categories)
  end

  it "returns an empty orders array" do
    expect(item.orders).to eq([])
  end

  it "responds to orders" do
    expect(item).to respond_to(:orders)
  end

  it "must have a unique title" do
    item
    item2 = Item.new(
                     title: "Green Chili Burrito",
                     description: "Amazingly spicey burrito",
                     price: 655
                     )
    expect(item2).to_not be_valid
  end

  it "must belong to at least one category" do
    item
    category = Category.create(name: "spicy", description: "super hot")
    item.categories << category

    expect(item.categories.count).to eq(1)
  end

  it "should have a valid numeric decimal value greater than zero" do
    item.price = -3
    expect(item).to_not be_valid
  end

	 it { should belong_to(:supplier) }
	
	it "should have a quantity" do
		item = Item.create(item_attributes)
		expect(item.quantity).to eq(50)
	end

	it "should have a default quantity of 0" do
		item 
		expect(item.quantity).to eq(0)
	end

	it "should have a supplier" do
		item 
		expect(item.supplier_id).to eq(1)
	end

	it "should not be valid without a supplier id" do
		i = Item.create(item_attributes)
		i.supplier_id = nil
		expect(i).to_not be_valid
	end
end
