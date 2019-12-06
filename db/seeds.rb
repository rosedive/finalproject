# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:"papa", email: "ga@gmail.com", admin: "true", password:  "$2a$10$tbvQuwJKeo7HtsdgiQl36.jPHgyP3BJEUhOkKzY77zxkxTNGh82OC ", password_confirmation:"$2a$10$tbvQuwJKeo7HtsdgiQl36.jPHgyP3BJEUhOkKzY77zxkxTNGh82OC ")

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
  