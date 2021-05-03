require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    it 'is valid with valid attributes' do
      params = {
      name: 'Luke',
      email: 'luke@gmail.com',
      password: 'hello',
      password_confirmation: 'hello',
      }
      expect(User.new(params)).to be_valid
    end

    it 'is invalid with name is nil' do
      params = {
      name: nil,
      email: 'luke@gmail.com',
      password: 'hello',
      password_confirmation: 'hello',
      }
      expect(User.new(params)).not_to be_valid
    end

    it 'is invalid with email is nil' do
      params = {
      name: "Tom",
      email: nil,
      password: 'hello',
      password_confirmation: 'hello',
      }
      expect(User.new(params)).not_to be_valid
    end

    it 'is invalid with password is nil' do
      params = {
      name: "Mike",
      email: "mike@gmail.com",
      password: nil,
      password_confirmation: 'hello',
      }
      expect(User.new(params)).not_to be_valid
    end

    it 'is invalid with password_confirmation is nil' do
      params = {
      name: "Dylan",
      email: "dylan@gmail.com",
      password: 'hello',
      password_confirmation: nil,
      }
      expect(User.new(params)).not_to be_valid
    end

    it 'is invalid with password is' do
      params = {
      name: "Mike",
      email: "mike@gmail.com",
      password: 'hello',
      password_confirmation: 'hello1',
      }
      expect(User.new(params)).not_to be_valid
    end
  end

  describe '.authenticate_with_credentials' do
    it "checks the login and returns the authenticated user" do
      user = User.create(name: "Luke", :email => "l_money@gmail.com", :password => "banana", :password_confirmation => "banana")
      authenticated_user = User.authenticate_with_credentials("l_money@gmail.com", "banana")
      expect(authenticated_user).to eq(user)
    end
  end
end