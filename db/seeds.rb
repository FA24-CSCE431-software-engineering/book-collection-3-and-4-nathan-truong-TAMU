# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if Rails.env.development?
    p "Running in Development Mode"
    load Rails.root.join('db/seeds/development.rb')

elsif Rails.env.test?
    p "Running in Test Mode"
    load Rails.root.join('db/seeds/test.rb')

else
    p "Running in Production Mode"
    load Rails.root.join('db/seeds/production.rb')
end