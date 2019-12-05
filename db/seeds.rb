# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:"papa", email: "ga@gmail.com", admin: "true", password:  "1234567890", password_confirmation:"1234567890")

    def create_user(email)
    User.create!(
      name: "ro",
      admin: "true",
      email:  email,
      password: "123456"
    )
  end
  #fake  users
  1...20.times do |i|
    create_user("ro_#{i}@gmail.com")
  end
  