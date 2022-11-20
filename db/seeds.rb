# frozen_string_literal: true
30.times {
  User.create!(
    name: Faker::Name.name,
    password: Faker::Internet.password(min_length: 6),
    email: Faker::Internet.free_email,
    image: File.open("./app/assets/images/test-user.jpeg"),
    address: '東京都',
    introduction: '自己紹介/n自己紹介/n自己紹介/n自己紹介/n自己紹介/n自己紹介',
    gender: '1'
  )
}

20.times {
  User.create!(
    name: Faker::Name.name,
    password: Faker::Internet.password(min_length: 6),
    email: Faker::Internet.free_email,
    image: File.open("./app/assets/images/test-user.jpeg"),
    address: '埼玉県',
    introduction: '----自己紹介----
                  ----自己紹介----
                  ----自己紹介----',
    gender: '2'
  )
}

User.all.each do |user|
  Lesson.create!(
    title: 'テストレッスン',
    image: File.open("./app/assets/images/test-lesson.jpg"),
    address: Faker::Address.city,
    information: '---------------------レッスン紹介--------------------------
                  ---------------------レッスン紹介--------------------------
                  ---------------------レッスン紹介--------------------------
                  ---------------------レッスン紹介--------------------------
                  ---------------------レッスン紹介--------------------------
                  ---------------------レッスン紹介--------------------------',
    price: '1h/1000円〜',
    schedule: '毎週土日開催！気軽にご相談ください。',
    user_id: user.id
  )
end

User.all.each do |user|
  Message.create!(
    user_id: user.id,
    to_user_id: user.id + 1,
    content: '----------テストメッセージ------------
              ----------テストメッセージ------------'
  )
end

User.all.each do |user|
  Favorite.create!(
    user_id: user.id,
    lesson_id: user.id + 1
  )
end
