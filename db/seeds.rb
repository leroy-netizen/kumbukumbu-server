puts "🌱 Seeding starts..."


puts "seeding users table...."
single_user1 = User.create(first_name: "Leroy", last_name: "Ombiji", username: "Baba wa keja",password:"12345678")
single_user2 = User.create(first_name: "Thomas", last_name: "Odori", username: "Sasco",password:"12345678")

# Seed your database here

puts "✅ Done seeding!"