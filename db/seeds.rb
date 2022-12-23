# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Workshop = Workshop.create([{ name: "Ruby on Rails",
                              description: "some dummy character that can be inserted into description some dummy character that can be inserted into   description some dummy character that can be inserted into   description",
                              start_date: Date.today + 2.days,
                              end_date: Date.today + 9.days,
                              start_time: "10:00 AM",
                              end_time: "3:00 PM",
                              registration_fee: 100,
                              total_seats: 100,
                              remaining_seats: 100 },
                              { name: "sping boot",
                              description: "some dummy character that can be inserted into description some dummy character that can be inserted into   description some dummy character that can be inserted into   description",
                              start_date: Date.today + 2.days,
                              end_date: Date.today + 9.days,
                              start_time: "10:00 AM",
                              end_time: "3:00 PM",
                              registration_fee: 100,
                              total_seats: 100,
                              remaining_seats: 100 }
                            
                            ])
