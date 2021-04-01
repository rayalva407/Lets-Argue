# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(email: "email@email.com", password: "password", username: "stucklucky")
User.create(email: "email1@email.com", password: "password1", username: "randomdude")
User.create(email: "email2@email.com", password: "password2", username: "whatever")

Debate.create(title: "Title", body: "This is a cool body", category: "opinions", user_id: 1)
Debate.create(title: "Legalize Marijuana", body: "Marijuana should be legalized because I love it", category: "politics", user_id: 2)
Debate.create(title: "God Is Not Real", body: "God is not real because I never seen him.", category: "religion", user_id: 3)