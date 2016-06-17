# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.count
(10 - categories.count).times do
  category = Category.create(name: Faker::Commerce.department)
  # sections_count = 5 + rand(6)
  # (sections_count - category.sections.count).times do
  #   content = Faker::Hipster.paragraphs(1 + rand(3)).join("\n\n")
  #   category.sections.create(title: Faker::Book.title, content: content)
  #   dot
  # end
  dot
end