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
    release_date: "2020年1月11日",
    category_id: 1,
    collaboration: "NIKE",
    description: "Hello!"
)

Item.create!(
    name: "sample2",
    price: "16000円",
    release_date: "2020年3月23日",
    category_id: 3,
    collaboration: "THE NORTH FACE",
    description: "GoodBye"
)

Item.create!(
    name: "sample3",
    price: "150000円",
    release_date: "2019年10月30日",
    category_id: 2,
    collaboration: "LOUIS VUITTON",
    description: "Thankyou"
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