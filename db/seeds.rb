puts "🌱 Seeding starts..."


puts "seeding users table...."
single_user1 = User.create(first_name: "Leroy", last_name: "Ombiji", username: "Baba wa keja",password:"12345678")
single_user2 = User.create(first_name: "Thomas", last_name: "Odori", username: "Sasco",password:"12345678")
single_user2 = User.create(first_name: "Mitchelle", last_name: "Njoki", username: "Kpop",password:"12345678")

# Seed your database here

puts "seeding posts table...."
single_post1 = Posts.create(title: "Coloseum", description: "The Colosseum was built as part of an imperial effort to revitalize Rome after the tumultuous year of the four emperors, 69 CE. As with other amphitheatres, the emperor Vespasian intended the Colosseum to be an entertainment venue, hosting gladiator fights, animal hunts, and even mock naval battles", creator: "Leroy", imageurl: "https://cdn.britannica.com/36/162636-050-932C5D49/Colosseum-Rome-Italy.jpg", like_count:2, user_id: 1)
single_post2 = Posts.create(title: "Coloseum", description: "The Colosseum was built as part of an imperial effort to revitalize Rome after the tumultuous year of the four emperors, 69 CE. As with other amphitheatres, the emperor Vespasian intended the Colosseum to be an entertainment venue, hosting gladiator fights, animal hunts, and even mock naval battles", creator: "Leroy", imageurl: "https://cdn.britannica.com/36/162636-050-932C5D49/Colosseum-Rome-Italy.jpg", like_count:2, user_id: 1)
single_post2 = Posts.create(title: "Coloseum", description: "The Colosseum was built as part of an imperial effort to revitalize Rome after the tumultuous year of the four emperors, 69 CE. As with other amphitheatres, the emperor Vespasian intended the Colosseum to be an entertainment venue, hosting gladiator fights, animal hunts, and even mock naval battles", creator: "Mitchelle", imageurl: "https://cdn.britannica.com/36/162636-050-932C5D49/Colosseum-Rome-Italy.jpg", like_count:2, user_id: 5)

puts "seeding comments table...."

single_comment1 = Comments.create(body: "This is a comment", post_id

puts "✅ Done seeding!"