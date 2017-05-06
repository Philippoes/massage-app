Answer.delete_all
User.delete_all
City.delete_all

City.create(name: 'Göteborg')
City.create(name: 'Stockholm')
City.create(name: 'Malmö')
City.create(name: 'Umeå')

User.create(name: 'Bettans massage', rating: '★★★★✩', address: 'Södra gatan 33', phone: '031-454545', email: 'bettan@google.com', pricerange: '$$$', city: City.last)
User.create(name: 'Salong Feelgood', rating: '★★★★✩', address: 'Östra gatan 55', phone: '031-454645', email: 'feelgood@google.com', pricerange: '$$', city: City.first)
User.create(name: 'Massage ohooo', rating: '★★★✩✩', address: 'Långa gatan 34', phone: '031-443455', email: 'doris@google.com', pricerange: '$', city: City.last)

puts "Created #{User.count} users"
puts "Created #{City.count} cities"
