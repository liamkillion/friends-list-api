# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
friends= Friend.create([
          {
            id:1,
            name: "Rebs",
            lastDateSeen: "9/23/2018",
            desiredFrequency: 14,
            notes: "likes concerts"
          },
          {
            id:2,
            name: "Dana",
            lastDateSeen: "9/23/2018",
            desiredFrequency: 21,
            notes: "likes going out to eat"
          },
          {
            id:3,
            name: "Todd",
            lastDateSeen: "9/23/2018",
            desiredFrequency: 7,
            notes: "likes riding bikes"
          },
          {
            id:4,
            name: "Liz",
            lastDateSeen: "9/23/2018",
            desiredFrequency: 11,
            notes: "likes going to bars"
          },
          {
            id:5,
            name: "Sebastian",
            lastDateSeen: "9/23/2018",
            desiredFrequency: 11,
            notes: "likes playing videogames"
          }
        ])

# hangHistory:[{"date": "9/23/2018","activity":"Went to the zoo","didHang": true}]
# hangHistory:[{"date": "9/23/2018","activity":"Went to the zoo","didHang": true}]
# hangHistory:[{"date": "9/23/2018","activity":"Went to the zoo","didHang": true}]
# hangHistory:[{"date": "9/23/2018","activity":"Went to the zoo","didHang": true}]
# hangHistory:[{"date": "9/23/2018","activity":"Went to the zoo","didHang": true}]
