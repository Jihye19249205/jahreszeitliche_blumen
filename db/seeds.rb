# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = Category.create!([
  { name: "季節" },
  { name: "都道府県" }
  ])

prefectures = Prefecture.create!([
    { category_id: categories[1].id, prefecture: '--' },
    { category_id: categories[1].id, prefecture: '東京都' },
    { category_id: categories[1].id, prefecture: '埼玉県' },
    { category_id: categories[1].id, prefecture: '神奈川県' },
    { category_id: categories[1].id, prefecture: '千葉県' },
    { category_id: categories[1].id, prefecture: '茨城県' },
    { category_id: categories[1].id, prefecture: '栃木県' },
    { category_id: categories[1].id, prefecture: '群馬県' },
    { category_id: categories[1].id, prefecture: '北海道' },
    { category_id: categories[1].id, prefecture: '青森県' },
    { category_id: categories[1].id, prefecture: '岩手県' },
    { category_id: categories[1].id, prefecture: '秋田県' },
    { category_id: categories[1].id, prefecture: '宮城県' },
    { category_id: categories[1].id, prefecture: '山形県' },
    { category_id: categories[1].id, prefecture: '福島県' },
    { category_id: categories[1].id, prefecture: '山形県' },
    { category_id: categories[1].id, prefecture: '富山県' },
    { category_id: categories[1].id, prefecture: '石川県' },
    { category_id: categories[1].id, prefecture: '福井県' },
    { category_id: categories[1].id, prefecture: '山梨県' },
    { category_id: categories[1].id, prefecture: '長野県' },
    { category_id: categories[1].id, prefecture: '岐阜県' },
    { category_id: categories[1].id, prefecture: '静岡県' },
    { category_id: categories[1].id, prefecture: '愛知県' },
    { category_id: categories[1].id, prefecture: '三重県' },
    { category_id: categories[1].id, prefecture: '滋賀県' },
    { category_id: categories[1].id, prefecture: '京都府' },
    { category_id: categories[1].id, prefecture: '大阪府' },
    { category_id: categories[1].id, prefecture: '兵庫県' },
    { category_id: categories[1].id, prefecture: '奈良県' },
    { category_id: categories[1].id, prefecture: '和歌山県' },
    { category_id: categories[1].id, prefecture: '鳥取県' },
    { category_id: categories[1].id, prefecture: '島根県' },
    { category_id: categories[1].id, prefecture: '岡山県' },
    { category_id: categories[1].id, prefecture: '広島県' },
    { category_id: categories[1].id, prefecture: '山口県' },
    { category_id: categories[1].id, prefecture: '徳島県' },
    { category_id: categories[1].id, prefecture: '香川県' },
    { category_id: categories[1].id, prefecture: '愛媛県' },
    { category_id: categories[1].id, prefecture: '高知県' },
    { category_id: categories[1].id, prefecture: '福岡県' },
    { category_id: categories[1].id, prefecture: '佐賀県' },
    { category_id: categories[1].id, prefecture: '長崎県' },
    { category_id: categories[1].id, prefecture: '熊本県' },
    { category_id: categories[1].id, prefecture: '大分県' },
    { category_id: categories[1].id, prefecture: '宮崎県' },
    { category_id: categories[1].id, prefecture: '鹿児島県' },
    { category_id: categories[1].id, prefecture: '沖縄県' }
  ])

users = User.create!([
  { email: 'user1@test.com',
    password: 'satotaro',
    # last_name: '佐藤',
    # first_name: '太郎',
    # last_name_kana: 'サトウ',
    # first_name_kana: 'タロウ',
    nick_name: 'Sato-Taro',
    introduction: 'ぜひ是非見て行ってください！',
    prefecture_id: 2, #Prefecture.find_by(prefecture: "東京都")
    # phone_number: '080-1111-1111',
    is_deleted: false,
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_profile_images/profile-image_user0.JPG"), filename: "profile-image_user0.JPG")
  },

  { email: 'user2@test.com',
    password: 'satohanako',
    # last_name: '佐藤',
    # first_name: '花子',
    # last_name_kana: 'サトウ',
    # first_name_kana: 'ハナコ',
    nick_name: 'Sato-Hanako',
    introduction: '素敵な写真をたくさんupします！',
    prefecture_id: 3, #Prefecture.find_by(prefecture: "埼玉県")
    # phone_number: '080-2222-2222',
    is_deleted: false,
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_profile_images/profile-image_user1.JPG"), filename: "profile-image_user1.JPG")
  },

  { email: 'user3@test.com',
    password: 'suzukijiro',
    # last_name: '鈴木',
    # first_name: '二郎',
    # last_name_kana: 'スズキ',
    # first_name_kana: 'ジロウ',
    nick_name: 'Suzuki-Jiro',
    introduction: 'よろしくお願いいたします。',
    prefecture_id: 4, #Prefecture.find_by(prefecture: "神奈川県")
    # phone_number: '080--3333-3333',
    is_deleted: false,
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_profile_images/profile-image_user2.JPG"), filename: "profile-image_user2.JPG")
  },

  { email: 'user4@test.com',
    password: 'suzukihanae',
    # last_name: '鈴木',
    # first_name: '花江',
    # last_name_kana: 'スズキ',
    # first_name_kana: 'ハナエ',
    nick_name: 'Suzuki-Hanae',
    introduction: '素敵な写真をたくさん見たいです。',
    prefecture_id: 5, #Prefecture.find_by(prefecture: "千葉県"),
    # phone_number: '080-4444-4444',
    is_deleted: false,
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_profile_images/profile-image_user3.JPG"), filename: "profile-image_user3.JPG")
  },

  { email: 'user5@test.com',
    password: 'tanakahitoshi',
    # last_name: '田中',
    # first_name: '仁',
    # last_name_kana: 'タナカ',
    # first_name_kana: 'ヒトシ',
    nick_name: 'Tanaka-Hitoshi',
    introduction: 'ご訪問ありがとうございます。',
    prefecture_id: 6, #Prefecture.find_by(prefecture: "茨城県"),
    # phone_number: '080-5555-5555',
    is_deleted: false,
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_profile_images/profile-image_user4.JPG"), filename: "profile-image_user4.JPG")
  },

  { email: 'user6@test.com',
    password: 'mochizukiyuko',
    # last_name: '望月',
    # first_name: '優子',
    # last_name_kana: 'モチヅキ',
    # first_name_kana: 'ユウコ',
    nick_name: 'Mochizuki-Yuko',
    introduction: 'お花が大好きです。',
    prefecture_id: 6, #Prefecture.find_by(prefecture: "茨城県"),
    # phone_number: '080-6666-6666',
    is_deleted: false,
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_profile_images/profile-image_user5.JPG"), filename: "profile-image_user5.JPG")
  },

  { email: 'user7@test.com',
    password: 'kinoshitahokuto',
    # last_name: '木下',
    # first_name: '北斗',
    # last_name_kana: 'キノシタ',
    # first_name_kana: 'ホクト',
    nick_name: 'Kinoshita-Hokuto',
    introduction: 'おすすめのスポットをたくさん紹介します。',
    prefecture_id: 2, #Prefecture.find_by(prefecture: "東京都")
    # phone_number: '080-7777-7777',
    is_deleted: false,
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_profile_images/profile-image_user6.JPG"), filename: "profile-image_user6.JPG")
  },

  { email: 'user8@test.com',
    password: 'muratashoji',
    # last_name: '村田',
    # first_name: '正治',
    # last_name_kana: 'ムラタ',
    # first_name_kana: 'ショウジ',
    nick_name: 'Murata-Shoji',
    introduction: 'よろしくお願いいたします。',
    prefecture_id: 3, #Prefecture.find_by(prefecture: "埼玉県"),
    # phone_number: '080-8888-8888',
    is_deleted: false,
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_profile_images/profile-image_user7.JPG"), filename: "profile-image_user7.JPG")
  },

  { email: 'user9@test.com',
    password: 'yamamotonoriko',
    # last_name: '山本',
    # first_name: '典子',
    # last_name_kana: 'ヤマモト',
    # first_name_kana: 'ノリコ',
    nick_name: 'Yamamoto-Noriko',
    introduction: '素敵な写真を見るのが楽しみです。',
    prefecture_id: 2, #Prefecture.find_by(prefecture: "東京都"),
    # phone_number: '080-9999-9999',
    is_deleted: false,
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_profile_images/profile-image_user8.JPG"), filename: "profile-image_user8.JPG")
  },

  { email: 'user10@test.com',
    # password: 'hirayamachie',
    # last_name: '平山',
    # first_name: '智惠',
    # last_name_kana: 'ヒラヤマ',
    # first_name_kana: 'チエ',
    nick_name: 'Hirayama-Chie',
    introduction: '共通の趣味で盛り上がりましょう！',
    prefecture_id: 2, #Prefecture.find_by(prefecture: "東京都"),
    # phone_number: '090-1111-1111',
    is_deleted: false,
    profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_profile_images/profile-image_user9.JPG"), filename: "profile-image_user9.JPG")
  }
    ])

seasons = Season.create!([
  { category_id: categories[0].id, season: '--' },
  { category_id: categories[0].id, season: '春' },
  { category_id: categories[0].id, season: '夏' },
  { category_id: categories[0].id, season: '秋' },
  { category_id: categories[0].id, season: '冬' }
  ])


Picture.create!([
  { user_id: 1, #User.find_by(nick_name: "Sato-Taro")
    season_id: 4, #Season.find_by(season: "秋")
    prefecture_id: 6, #Prefecture.find_by(prefecture: "茨城県")
    spot_name: 'ひたち海浜公園',
    caption: '生憎の雨でしたが、コスモスが満開でした',
    station: 'JR勝田駅',
    flower_plant: 'コスモス',
    created_at: '2022/10/1 15:50',
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_picture_images/picture1_user0.JPG"), filename: "picture1_user0.JPG")
  },

  { user_id: 1, #User.find_by(nick_name: "Sato-Taro"),
    season_id: 4, #Season.find_by(season: "秋"),
    prefecture_id: 6, #Prefecture.find_by(prefecture: "茨城県"),
    spot_name: 'ひたち海���公園',
    caption: 'オレンジのかわいい花が咲いてました',
    station: 'JR勝田駅',
    flower_plant: 'パンジー',
    created_at: '2022/10/1 15:50',
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_picture_images/picture2_user0.JPG"), filename: "picture2_user0.JPG")
  },

  { user_id: 2, #User.find_by(nick_name: "Sato-Taro"),
    season_id: 4, #Season.find_by(season: "秋"),
    prefecture_id: 6, #Prefecture.find_by(prefecture: "茨城県"),
    spot_name: 'ひたち海浜公園',
    caption: 'コキアが綺麗に色づいてました。',
    station: 'JR勝田駅',
    flower_plant: 'コキア',
    created_at: '2022/10/15 14:55',
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_picture_images/picture1_user1.JPG"), filename: "picture1_user1.JPG")
  },

  { user_id: 2, #User.find_by(nick_name: "Sato-Hanako"),
    season_id: 4, #Season.find_by(season: "秋"),
    prefecture_id: 6, #Prefecture.find_by(prefecture: "茨城県"),
    spot_name: 'ひたち海浜公園',
    caption: 'コキアが綺麗に色づいてました。',
    station: 'JR勝田駅',
    flower_plant: 'コキア',
    created_at: '2022/10/15 14:55',
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_picture_images/picture2_user1.JPG"), filename: "picture2_user1.JPG")
  },

  { user_id: 3, #User.find_by(nick_name: "Suzuki-Jiro"),
    season_id: 4, #Season.find_by(season: "秋"),
    prefecture_id: 6, #Prefecture.find_by(prefecture: "茨城県"),
    spot_name: 'ひたち海浜公園',
    caption: 'コキアの赤が綺麗でした。',
    station: 'JR勝田駅',
    flower_plant: 'コキア',
    created_at: '2022/10/17 14:59',
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_picture_images/picture1_user2.JPG"), filename: "picture1_user2.JPG")
  },

  { user_id: 3, #User.find_by(nick_name: "Suzuki-Jiro"),
    season_id: 2, #Season.find_by(season: "春"),
    prefecture_id: 6, #Prefecture.find_by(prefecture: "茨城県"),
    spot_name: 'ひたち海浜公園',
    caption: '素敵な青が広がっていました。',
    station: 'JR勝田駅',
    flower_plant: 'ネモフィラ',
    created_at: '2023/4/30 15:01',
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_picture_images/picture1_user2.JPG"), filename: "picture2_user2.JPG")
  },

  { user_id: 4, #User.find_by(nick_name: "Suzuki-Hanae"),
    season_id: 2, #Season.find_by(season: "春"),
    prefecture_id: 6, #Prefecture.find_by(prefecture: "茨城県"),
    spot_name: 'ひたち海浜公園',
    caption: 'ネモフィラブルー、最高でした！',
    station: 'JR勝田駅',
    flower_plant: 'ネモフィラ',
    created_at: '2023/5/1 15:02',
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_picture_images/picture1_user3.JPG"), filename: "picture1_user3.JPG")
  },

  { user_id: 4, #User.find_by(nick_name: "Suzuki-Hanae"),
    season_id: 2, #Season.find_by(season: "春"),
    prefecture_id: 6, #Prefecture.find_by(prefecture: "茨城県"),
    spot_name: 'ひたち海浜公園',
    caption: 'チューリップもたくさん咲いていました！',
    station: 'JR勝田駅',
    flower_plant: 'チューリップ',
    created_at: '2023/5/1 15:02',
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_picture_images/picture2_user3.JPG"), filename: "picture2_user3.JPG")
  },

  { user_id: 5, #user.find_by(nick_name: "Tanaka-Hitoshi"),
    season_id: 3, #season.find_by(season: "夏"),
    prefecture_id: 2, #prefecture.find_by(prefecture: "茨城県"),
    spot_name: '昭和記念公園',
    caption: 'ひまわりがとても可愛かったです。',
    station: 'JR立川駅',
    flower_plant: 'ひまわり',
    created_at: '2022/8/3 15:04',
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_picture_images/picture1_user4.JPG"), filename: "picture1_user4.JPG")
  },

  { user_id: 5, #User.find_by(nick_name: "Tanaka-Hitoshi"),
    season_id: 3, #Season.find_by(season: "夏"),
    prefecture_id: 2, #Prefecture.find_by(prefecture: "東京都"),
    spot_name: '昭和記念公園',
    caption: 'ひまわりがとても可愛かったです。',
    station: 'JR立川駅',
    flower_plant: 'ひまわり',
    created_at: '2022/8/3 15:04',
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_picture_images/picture2_user4.JPG"), filename: "picture2_user4.JPG")
  },

  { user_id: 6, #User.find_by(nick_name: "Mochizuki-Yuko"),
    season_id: 2, #Season.find_by(season: "春"),
    prefecture_id: 2, #Prefecture.find_by(prefecture: "東京都"),
    spot_name: '新宿御苑',
    caption: 'ペンタスというお花だそうです。可愛い。',
    station: '東京メトロ新宿御苑駅',
    flower_plant: 'ペンタス',
    created_at: '2023/5/15 15:07',
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_picture_images/picture1_user5.JPG"), filename: "picture1_user5.JPG")
  },

  { user_id: 6, #User.find_by(nick_name: "Mochizuki-Yuko")
    season_id: 2, #Season.find_by(season: "春")
    prefecture_id: 2, #Prefecture.find_by(prefecture: "東京都")
    spot_name: '根津神社',
    caption: 'つつじ祭りが開催されていました。',
    station: '東京メトロ千駄木駅',
    flower_plant: 'つつじ',
    created_at: '2023/5/20 15:08',
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_picture_images/picture2_user5.JPG"), filename: "picture2_user5.JPG")
  },

  { user_id: 7, #User.find_by(nick_name: "Kinoshita-Hokuto")
    season_id: 2, #Season.find_by(season: "春")
    prefecture_id: 2, #Prefecture.find_by(prefecture: "東京都")
    spot_name: '根津神社',
    caption: '黄色いつつじも素敵でした！',
    station: '東京メトロ千駄木駅',
    flower_plant: 'つつじ',
    created_at: '2023/5/19 15:09',
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_picture_images/picture1_user6.JPG"), filename: "picture1_user6.JPG")
  },

  { user_id: 7, #User.find_by(nick_name: "Kinoshita-Hokuto"),
    season_id: 2, #Season.find_by(season: "春"),
    prefecture_id: 2, #Prefecture.find_by(prefecture: "東京都"),
    spot_name: '根津神社',
    caption: 'つつじ祭りに行ってきました！',
    station: '東京メトロ千駄木駅',
    flower_plant: 'つつじ',
    created_at: '2023/5/19 15:10',
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_picture_images/picture2_user6.JPG"), filename: "picture2_user6.JPG")
  },

  { user_id: 8, #User.find_by(nick_name: "Murata-Shoji"),
    season_id: 2, #Season.find_by(season: "春"),
    prefecture_id: 2, #Prefecture.find_by(prefecture: "東京都"),
    spot_name: '根津神社',
    caption: 'つつじ祭りに行ってきました！満開💐',
    station: '東京メトロ千駄木駅',
    flower_plant: 'つつじ',
    created_at: '2023/5/20 15:13',
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_picture_images/picture1_user7.JPG"), filename: "picture1_user7.JPG")
  },

  { user_id: 8, #User.find_by(nick_name: "Murata-Shoji"),
    season_id: 4, #Season.find_by(season: "秋"),
    prefecture_id: 3, #Prefecture.find_by(prefecture: "埼玉県"),
    spot_name: '巾着田',
    caption: '満開の曼珠沙華',
    station: 'JR高麗駅',
    flower_plant: '彼岸花',
    created_at: '2022/9/22 15:14',
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_picture_images/picture2_user7.JPG"), filename: "picture2_user7.JPG")
  },

  { user_id: 9, #User.find_by(nick_name: "Yamamoto-Noriko"),
    season_id: 4, #Season.find_by(season: "秋"),
    prefecture_id: 3, #Prefecture.find_by(prefecture: "埼玉県"),
    spot_name: '巾着田',
    caption: '巾着田の曼珠沙華祭りに行ってきました！',
    station: 'JR高麗駅',
    flower_plant: '彼岸花',
    created_at: '2022/9/23 15:16',
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_picture_images/picture1_user8.JPG"), filename: "picture1_user8.JPG")
  },

  { user_id: 9, #User.find_by(nick_name: "Yamamoto-Noriko"),
    season_id: 4, #Season.find_by(season: "秋"),
    prefecture_id: 3, #Prefecture.find_by(prefecture: "埼玉県"),
    spot_name: '巾着田',
    caption: '巾着田の曼珠沙華祭りに行ってきました！',
    station: 'JR高麗駅',
    flower_plant: '彼岸花',
    created_at: '2022/9/23 15:16',
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_picture_images/picture2_user8.JPG"), filename: "picture2_user8.JPG")
  },

  { user_id: 10, #User.find_by(nick_name: "Hirayama-Chie"),
    season_id: 5, #Season.find_by(season: "冬"),
    prefecture_id: 6, #Prefecture.find_by(prefecture: "茨城県"),
    spot_name: '筑波山',
    caption: '筑波山登山ついでに紅葉をパシャリ📷 綺麗でした！',
    station: 'TXつくば駅',
    flower_plant: '紅葉',
    created_at: '2022/11/23 15:18',
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_picture_images/picture1_user9.JPG"), filename: "picture1_user9.JPG")
  },

  { user_id: 10, #User.find_by(nick_name: "Hirayama-Chie"),
    season_id: 5, #Season.find_by(season: "冬"),
     prefecture_id: 6, #prefecture.find_by(prefecture: "茨城県"),
    spot_name: '筑波山',
    caption: '筑波山登山ついでに紅葉をパシャリ📷 綺麗でした！',
    station: 'TXつくば駅',
    flower_plant: '紅葉',
    created_at: '2022/11/23 15:18',
    image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/production/test_picture_images/picture2_user9.JPG"), filename: "picture2_user9.JPG")
  }
  ])

  Admin.create!(
    email: 'admin@example.com',
    password: 'admin11')
