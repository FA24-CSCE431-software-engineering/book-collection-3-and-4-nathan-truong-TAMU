# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Book.create!([
    {
        title: "Minecraft: Essential Handbook",
        author: "Stephanie Milton / Jordan Maron",
        price: 14.85,
        published_date: Date.new(2015, 1, 1)
    },
    {
        title: "The Adventures of Captain Underpants",
        author: "Dav Pilkey",
        price: 8.51,
        published_date: Date.new(1997, 9, 1)
    },
    {
        title: "The Giver",
        author: "Lois Lowry",
        price: 11.99,
        published_date: Date.new(1993, 1, 1)
    },
    {
        title: "The Trumpet of the Swan",
        author: "E. B. White",
        price: 9.99,
        published_date: Date.new(1970, 1, 1)
    },
    {
        title: "The Outsiders",
        author: "S. E. Hinton",
        price: 14.99,
        published_date: Date.new(1967, 4, 24)
    }
])