# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# updated
require 'database_cleaner'

DatabaseCleaner.clean_with(:truncation)


artists = Artist.create([{ name: 'Coach' },

{ name: 'Biggie' },

{ name: 'Nas' },

{ name: 'Coldplay' },

{ name: 'Prince' },

{ name: 'Eve' },

{ name: 'Jimi' },

{ name: 'Gwen' }])



studios = Studio.create([{name: "Lu's Closet", location: 'Harlem, New York'},

{name: "Quad Studios", location: 'Brooklyn, New York'},

{name: "The Max", location: 'Harlem, New York'},

{name: "THe Boom Boom Room", location: 'Harlem, New York'},

{name: "The Block", location: 'Queens, New York'},

{name: "Hit Factory", location: 'Staten Island, New York'},

{name: "Glass Cage of Emotion", location: 'Bronx, New York'},

{name: "Beat Farm", location: 'Harlem, New York'},

{name: "Grandma's Basement", location: 'Harlem, New York'}])



engineers = Engineer.create([{email: "lu@lu.com", password: 'password', name: "lu"},

{email: "young@guru.com", password: 'password', name: "young guru"},

{email: "stush@stush.com", password: 'password', name: "stush"},

{email: "dre@dre.com", password: 'password', name: "dr. dre"},

{email: "timbo@timbo.com", password: 'password', name: "timbaland"},

{email: "rick@rick.com", password: 'password', name: "rick ruben"},

{email: "gilly@gilly.com", password: 'password', name: "gilly"},

{email: "teddy@teddy.com", password: 'password', name: "teddy riley"}])



#([{ name: 'Lu'}, {name: 'Stush'}, {name: 'Podrick'}, {name: 'Arya'}, {name: 'Teddy'}])
#Zat.create(appointment_date: '6.1.2019', engineer: Engineer.first, studio: Studio.first, artist: Artist.first )
Zat.create(appointment_date: '6.3.2019', engineer: engineers[0], studio: studios[0], artist: artists[0])

Zat.create(appointment_date: '6.4.2019', engineer: engineers[0], studio: studios[0], artist: artists[0])

Zat.create(appointment_date: '6.3.2019', engineer: engineers[1], studio: studios[1], artist: artists[1])

Zat.create(appointment_date: '6.4.2019', engineer: engineers[1], studio: studios[1], artist: artists[1])

Zat.create(appointment_date: '6.3.2019', engineer: engineers[2], studio: studios[2], artist: artists[2])

Zat.create(appointment_date: '6.4.2019', engineer: engineers[2], studio: studios[2], artist: artists[2])

Zat.create(appointment_date: '6.3.2019', engineer: engineers[3], studio: studios[3], artist: artists[3])

Zat.create(appointment_date: '6.4.2019', engineer: engineers[3], studio: studios[3], artist: artists[3])

Zat.create(appointment_date: '6.3.2019', engineer: engineers[4], studio: studios[4], artist: artists[4])

Zat.create(appointment_date: '6.4.2019', engineer: engineers[4], studio: studios[4], artist: artists[4])