require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'returns true when filling in all of the required fields' do
      @user = User.create(
        first_name: "tester", 
        last_name: "test", 
        email:"test@test.com",
        password:"abcd",
        password_confirmation:"abcd")
      expect(@user.save).to be true
    end
    it "shouldn't save and return error message if the passwords don't match" do
      @user = User.create(
        first_name: "tester", 
        last_name: "test", 
        email:"test1@test.com",
        password:"abcd",
        password_confirmation:"a")
      expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
    end
    it "should return false if email isn't unique not case sensitive" do
      @user1 = User.create(
        first_name: "tester", 
        last_name: "test", 
        email:"test@test.com",
        password:"abcd",
        password_confirmation:"abcd")
      @user2 = User.create(
        first_name: "tester", 
        last_name: "test", 
        email:"TEST@TEST.com",
        password:"abcd",
        password_confirmation:"abcd")
      expect(@user2.save).to be false
    end
    it "should return false if the no first name" do
      @user = User.create(
        first_name: nil, 
        last_name: "test", 
        email:"test1@test.com",
        password:"abcd",
        password_confirmation:"abcd")
      expect(@user.errors.full_messages).to include "First name can't be blank"
    end
    it "should return false if the no last name" do
      @user = User.create(
        first_name: "tester", 
        last_name: nil, 
        email:"test1@test.com",
        password:"abcd",
        password_confirmation:"abcd")
      expect(@user.errors.full_messages).to include "Last name can't be blank"
    end
    it "should return false if the no email" do
      @user = User.create(
        first_name: "tester", 
        last_name: "test", 
        email: nil,
        password:"abcd",
      expect(@user.errors.full_messages).to include "Email can't be blank"
    end
  end
end
