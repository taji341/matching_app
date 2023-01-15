# frozen_string_literal: true

# 30.times {
#   User.create!(
#     name: Faker::Name.name,
#     password: Faker::Internet.password(min_length: 6),
#     email: Faker::Internet.free_email,
#     image: File.open("./app/assets/images/test-user.jpeg"),
#     address: Faker::Address.state,
#     introduction: '----自己紹介----
#                   ----自己紹介----
#                   ----自己紹介----',
#     gender: '1'
#   )
# }

# 20.times {
#   User.create!(
#     name: Faker::Name.name,
#     password: Faker::Internet.password(min_length: 6),
#     email: Faker::Internet.free_email,
#     image: File.open("./app/assets/images/test-user.jpeg"),
#     address: Faker::Address.state,
#     introduction: '----自己紹介----
#                   ----自己紹介----
#                   ----自己紹介----',
#     gender: '2'
#   )
# }

User.all.each do |user|
#   Lesson.create!(
#     title: 'テストレッスン',
#     image: File.open("./app/assets/images/test-lesson.jpg"),
#     address: Faker::Address.city,
#     information: '---------------------レッスン紹介--------------------------
#                   ---------------------レッスン紹介--------------------------
#                   ---------------------レッスン紹介--------------------------
#                   ---------------------レッスン紹介--------------------------
#                   ---------------------レッスン紹介--------------------------
#                   ---------------------レッスン紹介--------------------------',
#     price: '1h/1000円〜',
#     schedule: '毎週土日開催！気軽にご相談ください。',
#     user_id: user.id
#   )

#   Favorite.create!(
#     user_id: user.id,
#     lesson_id: user.id + 1
#   )

#   Room.create!(
#     name: user.name
#   )

  Message.create!(
    user_id: user.id + 1,
    room_id: user.id,
    content: '----------テストメッセージ------------
                ----------テストメッセージ------------'
  )

  Message.create!(
    user_id: user.id,
    room_id: user.id,
    content: '----------テストメッセージ------------
                ----------テストメッセージ------------'
  )

  RoomUser.create!(
    user_id: user.id + 1,
    room_id: user.id
  )

  RoomUser.create!(
    user_id: user.id,
    room_id: user.id
  )
end
