# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "Clearing database from Users and Gift requests"
Message.destroy_all
Chatroom.destroy_all
GiftRequest.destroy_all
Chatroom.destroy_all
User.destroy_all


puts "---Creating seeds"
puts "..."
#puts "---Creating Default Users..."
hannah = User.create(location: "Vienna", first_name: "Hannah", last_name: "Eichelsdoerfer", email: 'hannah@localshopper.com', password: '123456', profile_picture: "https://avatars.githubusercontent.com/u/64103699?v=4")
mais = User.create(location: "Tel Aviv", first_name: "Mais", last_name: "Aroq", email: 'mais@localshopper.com', password: '123456', profile_picture: "https://avatars.githubusercontent.com/u/71976918?v=4")
emily = User.create(location: "London", first_name: "Emily", last_name: "Hoult",email: 'emily@localshopper.com', password: '123456', profile_picture: "https://avatars.githubusercontent.com/u/75494690?v=4")
vojtech = User.create(location: "Prague", first_name: "Vojtech", last_name: "Matous", email: 'vojtech@localshopper.com', password: '123456', profile_picture: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1617994666/v7vhpsuijh9nokmdiwqn.jpg")
charles = User.create(location: "Brussels", first_name: "Charles", last_name: "Overlaux", email: 'charles@localshopper.com', password: '123456', profile_picture: "https://avatars.githubusercontent.com/u/33698505?v=4")
# puts "---Done creating users!"

# puts "---Creating Default Products..."

GiftRequest.create(
  recipient_name: "Sophie",
  recipient_address: "London",
  budget: 100,
  product1: ["Lush Cloud Bathbomb"],
  packaging: "gold",
  requester: hannah
)

gift_for_chat_1 = GiftRequest.create(
  recipient_name: "Emilia",
  recipient_address: "Tel Aviv",
  budget: 50,
  packaging: "box",
  product1: ["Local Spa Voucher"],
  status: "accepted",
  requester: hannah,
  shopper: mais
)

GiftRequest.create(
  recipient_name: "Mia",
  recipient_address: "Brussels",
  budget: 200,
  packaging: "gift basket",
  product1: ["A tiny cactus", "Chocolate", "Cactus pot"],
  requester: hannah
)

gift_for_chat_2 = GiftRequest.create(
  recipient_name: "Sarah",
  recipient_address: "Prague",
  budget: 200,
  packaging: "gold wrapping paper",
  product1: ["Friends 10 Season Pack"],
  status: "paid",
  requester: mais,
  shopper: vojtech
)

GiftRequest.create(
  recipient_name: "Claire",
  recipient_address: "Dresden",
  budget: 200,
  packaging: "brown eco paper",
  product1: ["Lush Cloud Bathbomb", "Vegan Chocolate"],
  requester: charles
)

GiftRequest.create(
  recipient_name: "Chloe",
  recipient_address: "Madrid",
  budget: 200,
  product1: ["Bodyshop Creme", "Lindt Chocolate"],
  requester: mais
)

GiftRequest.create(
  recipient_name: "Elena",
  recipient_address: "Brussels",
  budget: 200,
  product1: ["Prada Bag", "FFP2 Prada Mask"],
  requester: emily
)

gift_for_chat_3 = GiftRequest.create(
  recipient_name: "Annie",
  recipient_address: "Vienna",
  budget: 200,
  packaging: "gift bag",
  product1: "Jojo Moyes Book", 
  product2: "A handcrafted mug",
  status: "delivered",
  requester: emily,
  shopper: hannah
)

gift_for_chat_4 = GiftRequest.create(
  recipient_name: "Fifi",
  recipient_address: "London",
  budget: 20,
  packaging: "yellow bow around",
  status: "accepted",
  product1: "Wallet",
  product2: "Picture Frame",
  product3: "A handcreme",
  requester: vojtech,
  shopper: emily
)

gift_for_chat_5 = GiftRequest.create(
  recipient_name: "Coleen",
  recipient_address: "Tel Aviv",
  budget: 60,
  packaging: "colorful box",
  status: "pending",
  product1: ["Earrings", "Vegan Chocolate"],
  status: "delivered",
  requester: vojtech,
  shopper: mais
)


GiftRequest.create(
  recipient_name: "Coleen",
  recipient_address: "London",
  budget: 60,
  status: "pending",
  packaging: "colorful box",
  product1: ["Sleeping Bag", "20l Backpack"],
  requester: vojtech,
)


GiftRequest.create(
  recipient_name: "Julian",
  recipient_address: "Vienna",
  budget: 60,
  packaging: "colorful box",
  requester: emily,
  product1: ["Parfume", "Instax Mini"],
)

GiftRequest.create(
  recipient_name: "Trent",
  recipient_address: "Vienna",
  budget: 60,
  packaging: "colorful box",
  product1: ["Sleeping Bag", "Hiking Backpack"],
  requester: vojtech,
)

GiftRequest.create(
  recipient_name: "Heinz",
  recipient_address: "Vienna",
  budget: 60,
  packaging: "colorful box",
  product1: ["Hunter Knife", "New Car Tires"],
  requester: vojtech
)

gift_for_chat_6 = GiftRequest.create(
  recipient_name: "Klaus",
  recipient_address: "Prague",
  budget: 60,
  packaging: "colorful box",
  product1: "New Car Tires",
  product2: "Hunter Knife",
  requester: mais
)

GiftRequest.create(
  recipient_name: "Hannes",
  recipient_address: "Berlin",
  budget: 60,
  packaging: "colorful box",
  product1: "Vegan Chocolate",
  requester: charles
)

Chatroom.create(
  gift_request_id:gift_for_chat_1.id
)

Chatroom.create(
  gift_request_id:gift_for_chat_2 .id
)

Chatroom.create(
  gift_request_id:gift_for_chat_3.id
)

Chatroom.create(
  gift_request_id:gift_for_chat_4.id
)

Chatroom.create(
  gift_request_id:gift_for_chat_5.id
)

Chatroom.create(
  gift_request_id:gift_for_chat_6.id
)

puts "---Done creating Seeds!"
