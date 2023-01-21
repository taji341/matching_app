# frozen_string_literal: true

40.times {
  User.create!(
    name: Faker::Name.name,
    password: Faker::Internet.password(min_length: 6),
    email: Faker::Internet.free_email,
    image: File.open("./app/assets/images/test-user.jpeg"),
    address: Faker::Address.state,
    introduction: '気軽にご連絡ください！
                    よろしくお願いします。',
    gender: '1'
  )
}

45.times {
  User.create!(
    name: Faker::Name.name,
    password: Faker::Internet.password(min_length: 6),
    email: Faker::Internet.free_email,
    image: File.open("./app/assets/images/test-user.jpeg"),
    address: Faker::Address.state,
    introduction: '気軽にご連絡ください！
                    よろしくお願いします。',
    gender: '2'
  )
}

20.times do |n|
  Lesson.create!(
    title: 'ピアノレッスン(初心者歓迎!)',
    image: File.open("./app/assets/images/top-piano.jpg"),
    address: Faker::Address.city,
    information: 'ピアノに関するレッスンです。
                  初心者〜経験者まで気軽にどうぞ！
                  オンライン可・出張可
                  持ち物は特にありません。
                  ご連絡お待ちしております。',
    price: '1h/1000円〜',
    schedule: '毎週土日開催！気軽にご相談ください。',
    user_id: "#{n + 1}",
  )
end

20.times do |n|
  Lesson.create!(
    title: 'バイオリンレッスン(初心者歓迎!)',
    image: File.open("./app/assets/images/top-violin.jpg"),
    address: Faker::Address.city,
    information: 'バイオリンに関するレッスンです。
                  初心者〜経験者まで気軽にどうぞ！
                  オンライン可・出張可
                  持ち物は特にありません。
                  ご連絡お待ちしております。',
    price: '1h/1000円〜',
    schedule: '毎週土日開催！気軽にご相談ください。',
    user_id: "#{n + 21}"
  )
end

20.times do |n|
  Lesson.create!(
    title: 'ギターレッスン(初心者歓迎!)',
    image: File.open("./app/assets/images/top-guitar.jpg"),
    address: Faker::Address.city,
    information: 'ギターに関するレッスンです。
                  初心者〜経験者まで気軽にどうぞ！
                  オンライン可・出張可
                  持ち物は特にありません。
                  ご連絡お待ちしております。',
    price: '1h/1000円〜',
    schedule: '毎週土日開催！気軽にご相談ください。',
    user_id: "#{n + 41}"
  )
end

22.times do |n|
  Lesson.create!(
    title: 'ドラムレッスン(初心者歓迎!)',
    image: File.open("./app/assets/images/top-drum.jpg"),
    address: Faker::Address.city,
    information: 'ドラムに関するレッスンです。
                  初心者〜経験者まで気軽にどうぞ！
                  オンライン可・出張可
                  持ち物は特にありません。
                  ご連絡お待ちしております。',
    price: '1h/1000円〜',
    schedule: '毎週土日開催！気軽にご相談ください。',
    user_id: "#{n + 61}"
  )
end

80.times do |n|
  Favorite.create!(
    user_id: "#{n + 1}",
    lesson_id: "#{n + 2}"
  )

  Room.create!(
    name: "#{n + 1}"
  )

  Message.create!(
    user_id: "#{n + 1}",
    room_id: "#{n + 1}",
    content: '初めまして！
              今週土日どちらか予約できないでしょうか？
              オンラインを希望です！
              よろしくお願いします。'
  )

  Message.create!(
    user_id: "#{n + 2}",
    room_id: "#{n + 1}",
    content: '初めまして！
              土曜日13時〜18時でしたらいつでも大丈夫です!
              お時間決まりましたら再度ご連絡お願いします。'
  )

  RoomUser.create!(
    user_id: "#{n + 1}",
    room_id: "#{n + 1}"
  )

  RoomUser.create!(
    user_id: "#{n + 2}",
    room_id: "#{n + 1}"
  )
end
