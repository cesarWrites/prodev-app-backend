# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
ratings = [9, 7, 8, 6, 9, 10]
adjectives = ["Python programming", "object-orinetd", "web-based language", "APIs ", "Backend", "fullstack"]
descriptions = ["learn the versatile python programmiing language", "(included Java,python,and tuby OOP)", "MVC frameworks, django, rails", "Application programming interfaces are a bridge to teh frontend", "(postman required)", "Keenness to learn!!!!"]

5.times do
    course = Course.create(
        title: Faker::Internet.name,
        rating: ratings.sample
    )

    rand(2..4).times do
        course.lessons.create(
            name: "#{adjectives.sample} #{Faker::Appliance.equipment}",
            description: descriptions.sample,
        )
    end
end