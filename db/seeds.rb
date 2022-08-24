# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Venue.destroy_all
User.destroy_all
Checkin.destroy_all
Category.destroy_all
VenueCategory.destroy_all

random = Random.new

Category.create(
  [
    {
      name: "Bar",
    },
    {
      name: "Education",
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
      name: "Beauty",
    },
    {
      name: "Hotel",
    },
    {
      name: "Shopping",
    },
    {
      name: "Sports",
    },
    {
      name: "Hookah",
    },
    {
      name: "Other",
    }
  ]
)

venues = [
    {
      name: "Le Wagon",
      address: "425, Yanping Rd, Jingan District, Shanghai, China",
      phone: "+86-138-1245-8352",
      open_time: "09:00 am",
      close_time: "18:00 pm",
      discount: "Early-bird Discount",
      latitude: 31.233442,
      longitude: 121.437512,
      categories: ['Education'],
      photo: "https://wozai-lewagon.oss-cn-shanghai.aliyuncs.com/le_wagon.JPG"
    },
    {
      name: "The Shed",
      address: "698 Shaanxi Bei Lu, Jingan District, Shanghai, China",
      phone: "+86-21-6237-6381",
      open_time: "11:00 am",
      close_time: "2:00 am",
      discount: "Specials every day of the week.",
      latitude: 31.234511,
      longitude: 121.45017,
      categories: ['Bar', 'Restaurant'],
      photo: "https://wozai-lewagon.oss-cn-shanghai.aliyuncs.com/the_shed.jpg"
    },
    {
      name: "The Grand Yard",
      address: "608 Xikang Lu, Jingan District, Shanghai, China",
      phone: "+86-21-5204-9620",
      open_time: "11:00 am",
      close_time: "2:00 am",
      discount: "Spaghetti and meatballs 68rmb.",
      latitude: 31.23508,
      longitude: 121.44653,
      categories: ['Bar', 'Restaurant'],
      photo: "https://wozai-lewagon.oss-cn-shanghai.aliyuncs.com/grand_yard.jpg"
    },
    {
      name: "Gin & Juice",
      address: "358 Kangding Lu, Jingan District, Shanghai, China",
      phone: "+86-180-1763-9776",
      open_time: "11:00 am",
      close_time: "2:00 am",
      discount: "Happy Hour: 150rmb for 4 drinks (G&T's, Peroni & Wine) and 50rmb for Gin Martini, Aperol, Sangria, Moscow Mule and all standard house pour, available from Monday to Friday,  3pm - 7pm.",
      latitude: 31.235167,
      longitude: 121.450486,
      categories: ['Bar', 'Restaurant'],
      photo: "https://wozai-lewagon.oss-cn-shanghai.aliyuncs.com/gin_juice.jpg"
    },
    {
      name: "Liquid Laundry",
      address: "K. Wah Centre, 2/F, 1028 Huaihai Zhong Lu, Xuhui District, Shanghai, China",
      phone: "+86-21-6445-9589",
      open_time: "11:00 am",
      close_time: "21:00 pm",
      discount: "Happy Hour: (Sun-Thu From 4-8pm) ¥35 for all craft beer and ¥50 for house wines and cocktails.
      50% off selected bottle house wine and house spirit after 8pm.",
      latitude: 31.21586,
      longitude: 121.45579,
      categories: ['Bar', 'Restaurant'],
      photo: "https://wozai-lewagon.oss-cn-shanghai.aliyuncs.com/liquid_laundry.jpg"
    },
    {
      name: "Fat Cow",
      address: "Unit 103, 1/F, No.135 Yanping Road, Jingan District, Shanghai, China",
      phone: "+86-21-5228-2298",
      open_time: "11:00 am",
      close_time: "21:00 pm",
      discount: "Daily Happy Hour at Fat Cow from 4pm-8pm Special discounted prices on Happy Hour drinks",
      latitude: 31.229142,
      longitude: 121.440718,
      categories: ['Restaurant'],
      photo: "https://wozai-lewagon.oss-cn-shanghai.aliyuncs.com/fat_cow.jpg"
    },
    {
      name: "Pie Society",
      address: "Shop 102 Building 5, Xingfuli, No.381 Panyu Road, Changning District, Shanghai, China",
      phone: "+86-136-7189-3024",
      open_time: "11:00 am",
      close_time: "21:00 pm",
      discount: "We do occasional runs of novelty pies such as Irish Shepherdless and Gourmet Steak & Stilton. We are always developing new flavors to add more specialty pies in the future.",
      latitude: 31.20451,
      longitude: 121.4306,
      categories: ['Restaurant'],
      photo: "https://wozai-lewagon.oss-cn-shanghai.aliyuncs.com/pie_society.jpg"
    },
    {
      name: "Brothers Kebab",
      address: "310 Fengxian Rd Shanghai, Shanghai, China,",
      phone: "+86-21-5265-5177",
      open_time: "11:00 am",
      close_time: "21:00 pm",
      discount: "null",
      latitude: 31.229115,
      longitude: 121.45435,
      categories: ['Restaurant'],
      photo: "https://wozai-lewagon.oss-cn-shanghai.aliyuncs.com/brothers_kebab.jpg"
    },
    {
      name: "Boxing Cat Brewery",
      address: "82 Fuxing Xi Lu, Xuhui District, Shanghai, China",
      phone: "+86-21-6431-2091",
      open_time: "11:00 am",
      close_time: "21:00 pm",
      discount: "Happy Hour: Everyday 4pm-8pm, craft beer, house pour, house wine priced at ￥35/class.",
      latitude: 31.21085,
      longitude: 121.44313,
      categories: ['Bar', 'Restaurant'],
      photo: "https://wozai-lewagon.oss-cn-shanghai.aliyuncs.com/boxing_cat.jpg"
    },
    {
      name: "Homeslice",
      address: "B1/F, 158 Julu Lu, Huangpu District, Shanghai, China",
      phone: "+86-21-5309-9332",
      open_time: "11:00 am",
      close_time: "12:00 am",
      discount: "null",
      latitude: 31.223343,
      longitude: 121.466053,
      categories: ['Restaurant'],
      photo: "https://wozai-lewagon.oss-cn-shanghai.aliyuncs.com/homeslice.jpeg"
    },
    {
      name: "The Beer Lady",
      address: "1247 Suzhou South Road Near Xinchang Road, Shanghai, China",
      phone: "+86-21-5386-3393",
      open_time: "11:00 am",
      close_time: "2:00 am",
      discount: "Hundreds of beers from around the world!",
      latitude: 31.239912,
      longitude: 121.466442,
      categories: ['Bar', 'Shopping'],
      photo: "https://wozai-lewagon.oss-cn-shanghai.aliyuncs.com/beer_lady.jpg"
    },
    {
      name: "exeQute",
      address: "425, Yanping Rd, Jingan District, Shanghai, China",
      phone: "null",
      open_time: "09:00 am",
      close_time: "10:00 pm",
      discount: "Vouchers available for individual classes and newcomers can try it for free.",
      latitude: 31.233443,
      longitude: 121.437513,
      categories: ['Gym'],
      photo: "https://wozai-lewagon.oss-cn-shanghai.aliyuncs.com/exequte.jpeg"
    },

    {
      name: "Helen Nail Spa",
      address: "No.6 lane 819, Julu Rd., Jingan District, Shanghai, China",
      phone: "+86-21-5403-7802",
      open_time: "09:00 am",
      close_time: "10:00 pm",
      discount: "null",
      latitude: 31.219245,
      longitude: 121.450107,
      categories: ['Beauty'],
      photo: "https://wozai-lewagon.oss-cn-shanghai.aliyuncs.com/helen_nails.jpeg"
    },

    {
      name: "Home Garden",
      address: "Anhua Road 492 Haode Biyiyuan Multi-media Creative Park Room 106 (Nearby Kaixuan Road), Changning District, Shanghai, China",
      phone: "+86-21-6251-0378",
      open_time: "10:00 am",
      close_time: "11:00 pm",
      discount: "null",
      latitude: 31.21529,
      longitude: 121.42027,
      categories: ['Cafe', 'Restaurant'],
      photo: "https://wozai-lewagon.oss-cn-shanghai.aliyuncs.com/home_garden.jpeg"
    },

    {
      name: "The Room Hookah Lounge",
      address: "No.1165 Jiangning Road, Putuo District Room 307 Shengtiandi Building, Shanghai, China",
      phone: "null",
      open_time: "10:00 am",
      close_time: "2:00 am",
      discount: "null",
      latitude: 31.1412,
      longitude: 121.251,
      categories: ['Bar', 'Cafe', 'Hookah'],
      photo: "https://wozai-lewagon.oss-cn-shanghai.aliyuncs.com/hookah.jpeg"
    },

    {
      name: "Shanghai Golf Club",
      address: "3765 Jiahang Hwy, Jiading District, Shanghai, China",
      phone: "+86-21-5995-0111",
      open_time: "7:00 am",
      close_time: "5:00 pm",
      discount: "null",
      latitude: 31.476617,
      longitude: 121.226709,
      categories: ['Sports'],
      photo: "https://wozai-lewagon.oss-cn-shanghai.aliyuncs.com/shanghai_golf_club.jpeg"
    },

    {
      name: "Iapm Mall",
      address: "999 Huaihai M Rd | 淮海中路999号 (Shaanxi S. Rd & Yangyang S. Rd, Xúhuì District, Shanghai, China",
      phone: "+86-21-3326-6700",
      open_time: "9:00 am",
      close_time: "11:00 pm",
      discount: "null",
      latitude: 31.215616,
      longitude: 121.458145,
      categories: ['Shopping'],
      photo: "https://wozai-lewagon.oss-cn-shanghai.aliyuncs.com/iapm_mall.jpeg"
    },

    {
      name: "Gu Cheng Park",
      address: "No.333 Renmin Road, Huangpu District, Shanghai, China",
      phone: "null",
      open_time: "5:00 am",
      close_time: "9:00 pm",
      discount: "null",
      latitude: 31.228457,
      longitude: 121.493867,
      categories: ['Park'],
      photo: "https://wozai-lewagon.oss-cn-shanghai.aliyuncs.com/gucheng_park.jpeg"
    },

    {
      name: "Museum of Contemporary Art (MOCA)",
      address: "People's Park, 231 Nanjing Xi Lu, Huangpu District, Shanghai, China",
      phone: "+86-21-6327-1282",
      open_time: "10:00 am",
      close_time: "6:00 pm",
      discount: "Discounts for seniors, students, and military personnel.",
      latitude: 31.206149,
      longitude: 121.387795,
      categories: ['Museum'],
      photo: "https://wozai-lewagon.oss-cn-shanghai.aliyuncs.com/moca.jpeg"
    }
]

venues.each do |venue|
  temp_venue = Venue.create(
    name: venue[:name],
    address: venue[:address],
    phone: venue[:phone],
    open_time: venue[:open_time],
    close_time: venue[:close_time],
    discount: venue[:discount],
    latitude: venue[:latitude],
    longitude: venue[:longitude],
    photo: venue[:photo]
  )
  cats = venue[:categories]

  cats&.each do |category|
    temp_venue.categories << Category.where(name: category)
    # temp_venue.save
  end
end

User.create(
  [
    # {
    #   nickname: "Jerry",
    # },
    # {
    #   nickname: "Larry",
    # },
    # {
    #   nickname: "Ethan",
    # },
    # {
    #   nickname: "Stu",
    # },
    # {
    #   nickname: "Julian",
    # },
    # {
    #   nickname: "Annie",
    # },
    # {
    #   nickname: "Aza",
    # },
    # {
    #   nickname: "Zora",
    # },
    # {
    #   nickname: "Lillian",
    # },
    # {
    #   nickname: "Michael",
    # },
    # {
    #   nickname: "Alex",
    # },
    # {
    #   nickname: "Xun",
    # },
    # {
    #   nickname: "Heizi",
    # },
    # {
    #   nickname: "Anand",
    # },
    # {
    #   nickname: "Aggy",
    # },
    # {
    #   nickname: "Pablo",
    # },
    # {
    #   nickname: "Nikki",
    # },

    # {
    #   nickname: "Pavel",
    # },
    # {
    #   nickname: "Etienne",
    # },
  ]
)

Venue.all.each do |venue|
  User.all.each do |user|
    Checkin.create(venue: venue, user: user, number_of_visits: random.rand(0..2))
  end
end
