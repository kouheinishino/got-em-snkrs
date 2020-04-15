# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.create!(
    name: "sample1",
    price: "2000円",
    release_date: "2020-01-11",
    category_id: 1,
    collaboration: "NIKE",
    description: "Hello!",
    image_path: "/assets/sample1"
)

Item.create!(
    name: "sample2",
    price: "16000円",
    release_date: "2020-03-23",
    category_id: 3,
    collaboration: "THE NORTH FACE",
    description: "GoodBye",
    image_path: "/assets/sample2"
)

Item.create!(
    name: "sample3",
    price: "150000円",
    release_date: "2019-10-30",
    category_id: 2,
    collaboration: "LOUIS VUITTON",
    description: "Thankyou",
    image_path: "/assets/sample3"
)

Item.create!(
    name: "sample4",
    price: "1000円",
    release_date: "2019-01-22",
    category_id: 4,
    collaboration: "LACOSTE",
    description: "Thankyou",
    image_path: "/assets/sample4"
)

Item.create!(
    name: "sample5",
    price: "3000円",
    release_date: "2018-02-01",
    category_id: 5,
    collaboration: "adidas",
    description: "Thankyou",
    image_path: "/assets/sample5"
)

Item.create!(
    name: "sample6",
    price: "4000円",
    release_date: "2018-11-11",
    category_id: 6,
    collaboration: "jordan",
    description: "Thankyou",
    image_path: "/assets/sample6"
)

Item.create!(
    name: "sample7",
    price: "5000円",
    release_date: "2020-02-22",
    category_id: 7,
    collaboration: "Off-White",
    description: "Thankyou",
    image_path: "/assets/sample7"
)

Item.create!(
    name: "sample8",
    price: "6000円",
    release_date: "2020-08-20",
    category_id: 8,
    collaboration: "Vans",
    description: "Thankyou",
    image_path: "/assets/sample8"
)

Item.create!(
    name: "sample9",
    price: "7000円",
    release_date: "2019-07-30",
    category_id: 9,
    collaboration: "Stussy",
    description: "Thankyou",
    image_path: "/assets/sample9"
)

Item.create!(
    name: "sample10",
    price: "8000円",
    release_date: "2018-07-30",
    category_id: 10,
    collaboration: "Champion",
    description: "Thankyou",
    image_path: "/assets/sample10"
)

Item.create!(
    name: "sample11",
    price: "9000円",
    release_date: "2019-06-05",
    category_id: 11,
    collaboration: "KAWS",
    description: "Thankyou",
    image_path: "/assets/sample11"
)

[
    "jackets",
    "shirts",
    "tops/sweaters",
    "sweatshirts",
    "pants",
    "shorts",
    "t-shirts",
    "hats",
    "bags",
    "accessories",
    "skate"
].each do |name|
    Category.create!(
        {name: name}
    )
end
