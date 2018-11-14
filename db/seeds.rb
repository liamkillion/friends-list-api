# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
friends = Friend.create([
          {
            name: "Rebs",
            lastDateSeen: Date.new(2018,9,23),
            desiredFrequency: 14,
            notes: "likes concerts"
          },
          {
            name: "Dana",
            lastDateSeen: Date.new(2018,9,23),
            desiredFrequency: 21,
            notes: "likes going out to eat"
          },
          {
            name: "Todd",
            lastDateSeen: Date.new(2018,9,23),
            desiredFrequency: 7,
            notes: "likes riding bikes"
          },
          {
            name: "Liz",
            lastDateSeen: Date.new(2018,9,23),
            desiredFrequency: 11,
            notes: "likes going to bars"
          },
          {
            name: "Sebastian",
            lastDateSeen: Date.new(2018,9,23),
            desiredFrequency: 11,
            notes: "likes playing videogames"
          }
        ])


hangs = Hang.create([
      {
        friend_id: 1,
        date: Date.new(2018,9,23),
        activity:"Went to the zoo",
        didHang: true
      },{
        friend_id: 2,
        date: Date.new(2018,9,23),
        activity:"Went to the zoo",
        didHang: true
      },{
        friend_id: 3,
        date: Date.new(2018,9,23),
        activity:"Went to the zoo",
        didHang: true
      },{
        friend_id: 4,
        date: Date.new(2018,9,23),
        activity:"Went to the zoo",
        didHang: true
      },{
        friend_id: 5,
        date: Date.new(2018,9,23),
        activity:"Went to the zoo",
        didHang: true
      },
    ]
  )
