# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.count
(10 - categories).times do
  category = Category.create(name: Faker::Commerce.department)
  puts("#")
end


Category.all.each do |category|
  (10).times do
    post = Post.create(user_id: 4,category_id: category.id,title: Faker::Commerce.product_name,description: Faker::Hipster.paragraph,
      contact_name: Faker::Name.name,contact_no: Faker::Number.number(10),
      contact_email: Faker::Internet.free_email)
    puts(".")
  end
end