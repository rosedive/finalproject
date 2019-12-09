require 'rails_helper'
RSpec.feature "book mabnagement function", type: :feature do
  background do
    User.create!(name:'rose dive', email: 'peter@gmail.Com', password: '123456',password_confirmation:'123456')
    visit root_path
  end
  scenario "Test user list" do
    User.create(name: 'Kalisa Emmy', email: 'kalisa@gmail.com',password_confirmation:'123456')
    User.create(name: 'Rita', email: 'rita@gmail.com',password_confirmation:'123456')
    User.all
    # save_and_open_page
  end
  scenario "Test User creation" do
    User.create(name: 'Timo Emmy', email: 'timo@gmail.com',password_confirmation:'123456')
    User.create(name: 'Rino', email: 'rino@gmail.com',password_confirmation:'123456')
  end
  scenario "Test User details" do
    @user=User.create(name: 'Kalisa Emmy', email: 'kalisa@gmail.com',password_confirmation:'123456')
    @user.name
    @user.email
  end
  scenario "Test User updating" do
    @user1=User.create(name: 'Kalisa Emmy', email: 'kalisa@gmail.com',password_confirmation:'123456')
    @user1.name='Mucyo anther'
    @user1.email='mucyo@gmail.com'
    @user1.save
  end
  scenario "Test User Deletion" do
    @user=User.create(name: 'Timo werner', email: 'titi@gmail.com',password_confirmation:'123456')
    @user2=User.create(name: 'theo', email: 'theo@gmail.com',password_confirmation:'123456')
    @user.destroy
  end
end