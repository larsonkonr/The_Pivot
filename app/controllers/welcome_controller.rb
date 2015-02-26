class WelcomeController < ApplicationController
  def index
    # @items = Item.all
    @water_products = [
      Item.find_by(title: "Water"),
      Item.find_by(title: "Canteen"),
      Item.find_by(title: "Water Purifier"),
      Item.find_by(title: "Water Tablets")
    ]
    @survival_products = [
      Item.find_by(title: "Baby Formula"),
      Item.find_by(title: "Soup"),
      Item.find_by(title: "Beans"),
      Item.find_by(title: "More beans")
    ]
    @clothing_products = [
      Item.find_by(title: "Gorgeous Cotton Gloves"),
      Item.find_by(title: "Incredible Wooden Shoes"),
      Item.find_by(title: "Awesome Wooden Shirt"),
      Item.find_by(title: "Intelligent Steel Hat")
    ]
  end

  def not_found

  end
end
