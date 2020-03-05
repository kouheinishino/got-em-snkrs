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
