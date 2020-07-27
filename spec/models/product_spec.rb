require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    before(:each) do
      @category = Category.new
    end
    it 'Successfuly saves a product into the DB' do
      @product = Product.new(name: "test", quantity: "10", price:"20", category:@category )
      expect(@product.save).to be true
    end
    it 'Validates that there is a name field' do
      @product = Product.new(name: nil, quantity: "10", price:"20", category:@category )
      expect(@product.errors.full_messages).to be_an_instance_of Array
    end
    it 'Validates that there is a price field' do
      @product = Product.new(name: "test", quantity: "10", price: nil, category:@category )
      expect(@product.errors.full_messages).to be_an_instance_of Array
    end
    it 'Validates that there is a quantity field' do
      @product = Product.new(name: "test", quantity: nil, price:"20", category:@category )
      expect(@product.errors.full_messages).to be_an_instance_of Array
    end
    it 'Validates that there is a category field' do
      @product = Product.new(name: "test", quantity: "10", price:"20", category:nil )
      expect(@product.errors.full_messages).to be_an_instance_of Array
    end
  end
end
