require 'rails_helper'

RSpec.describe User, type: :model do

  it "Validation does not pass if the user name is empty" do
    user = User.new(name: '', email: 'rose@gmail.com',password:'123456',password_confirmation:'123456')
    expect(user).not_to be_valid
  end

  it "Validation does not pass if email is empty" do
    user = User.new(name: 'rose', email: '',password:'123456',password_confirmation:'123456')
    expect(user).not_to be_valid
  end

  it "validation does not pass If password is  blank" do
    user = User.new(name: 'rose', email: 'rose@gmail.com',password:'',password_confirmation:'123456')
    expect(user).not_to be_valid
  end
  it "validation does not pass If email or password are  blank" do
    user = User.new(name: 'rose', email: '',password:'',password_confirmation:'123456')
    expect(user).not_to be_valid
  end
end