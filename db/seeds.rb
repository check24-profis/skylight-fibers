100.times do
  person = Person.create!(name: Faker::Name.name)

  rand(5..10).times do
    Book.create(title: Faker::Book.title, author: Faker::Book.author, person: person)
  end
end
