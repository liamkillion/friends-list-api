# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(email: 'liam.killion@gmail.com', password: 'password')


friends = Friend.create!([
          {
            user_id: 1,
            name: "Rebs",
            lastDateSeen: "2018-09-23",
            desiredFrequency: 14,
            notes: "concerts"
          },
          {
            user_id: 1,
            name: "Dana",
            lastDateSeen: "2018-09-23",
            desiredFrequency: 21,
            notes: "going out to eat"
          },
          {
            user_id: 1,
            name: "Todd",
            lastDateSeen: "2018-09-23",
            desiredFrequency: 7,
            notes: "riding bikes"
          },
          {
            user_id: 1,
            name: "Liz",
            lastDateSeen: "2018-09-23",
            desiredFrequency: 11,
            notes: "going to bars"
          },
          {
            user_id: 1,
            name: "Sebastian",
            lastDateSeen: "2018-09-23",
            desiredFrequency: 11,
            notes: "playing videogames"
          }
        ])


hangs = Hang.create!([
      {
        friend_id: 1,
        date: "2018-09-23",
        activity:"Went to the zoo",
        didHang: true
      },{
        friend_id: 2,
        date: "2018-09-23",
        activity:"Went to the zoo",
        didHang: true
      },{
        friend_id: 3,
        date: "2018-09-23",
        activity:"Went to the zoo",
        didHang: true
      },{
        friend_id: 4,
        date: "2018-09-23",
        activity:"Went to the zoo",
        didHang: true
      },{
        friend_id: 5,
        date: "2018-09-23",
        activity:"Went to the zoo",
        didHang: true
      },
    ]
  )
