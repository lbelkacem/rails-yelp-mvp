puts "Nettoyage la DB..."

Restaurant.destroy_all

puts "Création des restaurants.."

10.times do
  restaurant = Restaurant.create!(
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  phone_number: Faker::PhoneNumber.cell_phone,
  category: Restaurant::TYPES.sample
)
puts "Le Restaurant #{restaurant.id} a été créé"
end
