require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    
    it 'is valid with valid attributes' do
      @category = Category.new
      params = {
      name: 'Book',
      description: 'Lord Of The Rings',
      quantity: 5,
      category: @category,
      price_cents: 1000
      }
      expect(Product.new(params)).to be_valid
    end

    it 'is not valid with no name value' do
      @category = Category.new
      params = {
      name: nil,
      description: 'Logitech Speakers',
      quantity: 5,
      category: @category,
      price_cents: 1000
      }
      expect(Product.new(params)).not_to be_valid
    end

    it 'is not valid with no price value' do
      @category = Category.new
      params = {
      name: 'Ukulele',
      description: 'Kala Ukulele',
      quantity: 5,
      category: @category,
      price_cents: nil
      }
      expect(Product.new(params)).not_to be_valid
    end

    it 'is not valid with no quantity value' do
      @category = Category.new
      params = {
      name: 'Cats',
      description: 'Discount Cats for Sale',
      quantity: nil,
      category: @category,
      price_cents: 1000
      }
      expect(Product.new(params)).not_to be_valid
    end

    it 'is not valid with no category value' do
      @category = Category.new
      params = {
      name: 'DJ Turntables',
      description: 'Hercules Turntables',
      quantity: 5,
      category: nil,
      price_cents: 1000
      }
      expect(Product.new(params)).not_to be_valid
    end
    
    

    
    
  end
end
