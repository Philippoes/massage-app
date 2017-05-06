Answer.delete_all
User.delete_all
City.delete_all

User.create()

City.create(name: 'Göteborg')
City.create(name: 'Stockholm')
City.create(name: 'Malmö')
City.create(name: 'Umeå')

puts "Created #{User.count} users"
puts "Created #{City.count} cities"
