puts "Cleaning gangs..."
Gang.destroy_all
puts "Gangs cleaned!"

puts "Cleaning territories..."
Territory.destroy_all

puts "Creating territories..."
15.times do
  Territory.create!(
    name: Faker::Games::Fallout.location,
    pre_battle: "pre",
    post_battle: "post"
  )
end
puts "Territories finished!"

puts "DB seed completed"
