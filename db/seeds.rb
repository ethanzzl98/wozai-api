# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Venue.create(
  [
    {
      name: "Le Wagon",
      address: "425, Yanping Rd, Jingan District, Shanghai, China",
      phone: "123123123",
      open_time: "09:00 am",
      close_time: "18:00 pm",
      discount: "null",
      latitude: 31.233442,
      longitude: 121.437512
    },
    {
      name: "Shed",
      address: "698 Shaanxi Bei Lu, Jingan District, Shanghai, China",
      phone: "+86-21-6237-6381",
      open_time: "11:00 am",
      close_time: "2:00 am",
      discount: "null",
      latitude: 31.234511,
      longitude: 121.45017
    },
    {
      name: "The Grand Yard",
      address: "608 Xikang Lu, Jingan District, Shanghai, China",
      phone: "+86 21 5204 9620",
      open_time: "11:00 am",
      close_time: "2:00 am",
      discount: "null",
      latitude: 31.23508,
      longitude: 121.44653
    },
    {
      name: "Gin & Juice",
      address: "358 Kangding Lu, Jingan District, Shanghai, China",
      phone: "+86 180 1763 9776",
      open_time: "11:00 am",
      close_time: "2:00 am",
      discount: "null",
      latitude: 31.235167,
      longitude: 121.450486
    },
    {
      name: "Liquid Laundry",
      address: "K. Wah Centre, 2/F, 1028 Huaihai Zhong Lu, Xuhui District, Shanghai, China",
      phone: "+86 21 6445 9589",
      open_time: "11:00 am",
      close_time: "21:00 pm",
      discount: "null",
      latitude: 31.21586,
      longitude: 121.45579
    },
    {
      name: "Beef & Liberty",
      address: "Suite 111, 1376 Nanjing Xi Lu, Jingan District, Shanghai, China",
      phone: "+86-21-6289 5733",
      open_time: "11:30 am",
      close_time: "21:00 pm",
      discount: "null",
      latitude: 31.216576,
      longitude: 121.456041
    },
    {
      name: "Fat Cow",
      address: "Unit 103, 1/F, No.135 Yanping Road, Jingan District, Shanghai, China",
      phone: "+86 21 5228 2298",
      open_time: "11:00 am",
      close_time: "21:00 pm",
      discount: "null",
      latitude: 31.229142,
      longitude: 121.440718
    },
    {
      name: "Pie Society",
      address: "Shop 102 Building 5, Xingfuli, No.381 Panyu Road, Changning District, Shanghai, China",
      phone: "+86 136 7189 3024",
      open_time: "11:00 am",
      close_time: "21:00 pm",
      discount: "null",
      latitude: 31.20451,
      longitude: 121.4306
    },
    {
      name: "Brothers Kebab",
      address: "310 Fengxian Rd Shanghai, Shanghai, China,",
      phone: "+86 21 5265 5177",
      open_time: "11:00 am",
      close_time: "21:00 pm",
      discount: "null",
      latitude: 31.229115,
      longitude: 121.45435
    },
    {
      name: "Boxing Cat Brewery (Yongfu Lu)",
      address: "82 Fuxing Xi Lu, Xuhui District, Shanghai, China",
      phone: "+86-21-6431 2091",
      open_time: "11:00 am",
      close_time: "21:00 pm",
      discount: "null",
      latitude: 31.21085,
      longitude: 121.44313
    },
    {
      name: "New York Pizza",
      address: "1226-5 Changle Rd, Jingan District, Shanghai, China",
      phone: "+86-21- 5466-0969",
      open_time: "11:00 am",
      close_time: "21:00 pm",
      discount: "null",
      latitude: 31.215026,
      longitude: 121.44168
    },
    {
      name: "The Beer Lady",
      address: "1247 Suzhou South Road Near Xinchang Road, Shanghai, China",
      phone: "+86-21-5386 3393",
      open_time: "11:00 a.m.",
      close_time: "2:00 a.m.",
      discount: "null",
      latitude: 31.239912,
      longitude: 121.466442
    }
  ]
)

Categories.create(
  [
    {
      name: "Bar",
    },
    {
      name: "Restaurant",
    },
    {
      name: "Park",
    },
    {
      name: "Museum",
    },
    {
      name: "Entertainment",
    },
    {
      name: "Tea House",
    },
    {
      name: "Cafe",
    },
    {
      name: "Gym",
    },
    {
      name: "Other",
    }
  ]
)
Users.create(
  [
    {
      nickname: "Jerry",
    },
    {
      nickname: "Larry",
    },
    {
      nickname: "Ethan",
    },
    {
      nickname: "Stu",
    },
    {
      nickname: "Julian",
    },
    {
      nickname: "Annie",
    },
    {
      nickname: "Aza",
    },
    {
      nickname: "Zora",
    },
    {
      nickname: "Lillian",
    },
    {
      nickname: "Michael",
    },
    {
      nickname: "Alex",
    },
    {
      nickname: "Xun",
    },
    {
      nickname: "Heizi",
    },
    {
      nickname: "Anand",
    },
    {
      nickname: "Aggy",
    },
    {
      nickname: "Pablo",
    },
    {
      nickname: "Nikki",
    },
  ]
)
Checkins.create(
  [
    {
      user_id: 0,
      venue_id: 12,
      number_of_visits: 2,
      public: true
    },
    {
      user_id: 1,
      venue_id: 11,
      number_of_visits: 2,
      public: true
    },
    {
      user_id: 2,
      venue_id: 10,
      number_of_visits: 2,
      public: true
    },
    {
      user_id: 3,
      venue_id: 9,
      number_of_visits: 2,
      public: true
    },
    {
      user_id: 4,
      venue_id: 8,
      number_of_visits: 2,
      public: true
    },
    {
      user_id: 5,
      venue_id: 7,
      number_of_visits: 2,
      public: true
    },
    {
      user_id: 6,
      venue_id: 6,
      number_of_visits: 2,
      public: true
    },
    {
      user_id: 7,
      venue_id: 5,
      number_of_visits: 2,
      public: true
    },
    {
      user_id: 8,
      venue_id: 4,
      number_of_visits: 2,
      public: true
    },
    {
      user_id: 9,
      venue_id: 3,
      number_of_visits: 2,
      public: true
    },
    {
      user_id: 10,
      venue_id: 2,
      number_of_visits: 2,
      public: true
    },
    {
      user_id: 11,
      venue_id: 1,
      number_of_visits: 20,
      public: false
    }
  ]
)
