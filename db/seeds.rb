# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
  email: 'test@test.com',
  password: 'aabbcc'
  )

Category.create!(
  [
    { name: '季節' },
    { name: '都道府県' }
    ]
  )

Prefecture.create!(
  [
    { prefecture: '東京' },
    { prefecture: '埼玉' },
    { prefecture: '神奈川' },
    { prefecture: '千葉' },
    { prefecture: '茨城' },
    { prefecture: '栃木' },
    { prefecture: '群馬' }
    ],
    category_id: 1
  )

Season.create!(
  [
    { season: '春'},
    { season: '夏'},
    { season: '秋'},
    { season: '冬'}
    ],
    category_id: 2
  )

User.create!(
  [
    { email: 'user1@test.com',
      password: 'aabbcc',
      last_name: 'テスト',
      first_name: '太郎',
      last_name_kana: 'テスト',
      first_name_kana: 'タロウ',
      nick_name: 'Taro',
      introduction: '初めまして！',
      prefecture_id: 1,
      phone_number: '080-1111-1111',
      is_deleted: false},

    { email: 'user2@test.com',
      password: 'ddeeff',
      last_name: 'テスト',
      first_name: '花子',
      last_name_kana: 'テスト',
      first_name_kana: 'ハナコ',
      nick_name: 'hanako',
      introduction: '初めまして！',
      prefecture_id: 2,
      phone_number: '080-2222-2222',
      is_deleted: false}
    ]
  )