5.times do
  Section.create(
      title: Faker::Book.title
  )
end