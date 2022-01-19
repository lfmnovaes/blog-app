# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = User.create({ name: "John Doe", photo: "https://i.pravatar.cc/200?img=3", bio: "Lorem ipsum", posts_counter: 1 })
user2 = User.create({ name: "Maria", photo: "https://i.pravatar.cc/200?img=5", bio: "Ipsum Lorem", posts_counter: 0 })
post1 = Post.create({ title: "42", text: "Answer to the Ultimate Question of Life, the Universe, and Everything", user_id: 1})
comment1 = Comment.create({ text: "Nice", user_id: 2, post_id: 1 })
