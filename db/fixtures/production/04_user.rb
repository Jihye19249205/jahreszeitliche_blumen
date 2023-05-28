User.seed(
  { id: 1,
    email: 'user1@test.com',
    password: 'satotaro',
    last_name: '佐藤',
    first_name: '太郎',
    last_name_kana: 'サトウ',
    first_name_kana: 'タロウ',
    nick_name: 'Sato-Taro',
    introduction: 'ぜひ是非見て行ってください！',
    prefecture_id: 2,
    phone_number: '080-1111-1111',
    is_deleted: false,
    profile_image: Rails.root.join("db/fixtures/production/test_profile_images/test_profile_images/profile-image_user1").open
  },

  { id: 2,
    email: 'user2@test.com',
    password: 'satohanako',
    last_name: '佐藤',
    first_name: '花子',
    last_name_kana: 'サトウ',
    first_name_kana: 'ハナコ',
    nick_name: 'Sato-Hanako',
    introduction: '素敵な写真をたくさんupします！',
    prefecture_id: 3,
    phone_number: '080-2222-2222',
    is_deleted: false,
    profile_image: Rails.root.join("db/fixtures/production/test_profile_images/test_profile_images/profile-image_user2").open
  },
  
  { id: 3,
    email: 'user3@test.com',
    password: 'suzukijiro',
    last_name: '鈴木',
    first_name: '二郎',
    last_name_kana: 'スズキ',
    first_name_kana: 'ジロウ',
    nick_name: 'Suzuki-Jiro',
    introduction: 'よろしくお願いいたします。',
    prefecture_id: 4,
    phone_number: '080--3333-3333',
    is_deleted: false,
    profile_image: Rails.root.join("db/fixtures/production/test_profile_images/test_profile_images/profile-image_user3").open
  },
  
  { id: 4,
    email: 'user4@test.com',
    password: 'suzukihanae',
    last_name: '鈴木',
    first_name: '花江',
    last_name_kana: 'スズキ',
    first_name_kana: 'ハナエ',
    nick_name: 'Suzuki-Hanae',
    introduction: '素敵な写真をたくさん見たいです。',
    prefecture_id: 5,
    phone_number: '080-4444-4444',
    is_deleted: false,
    profile_image: Rails.root.join("db/fixtures/production/test_profile_images/test_profile_images/profile-image_user4").open
  },
  
  { id: 5,
    email: 'user5@test.com',
    password: 'tanakahitoshi',
    last_name: '田中',
    first_name: '仁',
    last_name_kana: 'タナカ',
    first_name_kana: 'ヒトシ',
    nick_name: 'Tanaka-Hitoshi',
    introduction: 'ご訪問ありがとうございます。',
    prefecture_id: 6,
    phone_number: '080-5555-5555',
    is_deleted: false,
    profile_image: Rails.root.join("db/fixtures/production/test_profile_images/test_profile_images/profile-image_user5").open
  },
  
  { id: 6,
    email: 'user6@test.com',
    password: 'mochizukiyuko',
    last_name: '望月',
    first_name: '優子',
    last_name_kana: 'モチヅキ',
    first_name_kana: 'ユウコ',
    nick_name: 'Mochizuki-Yuko',
    introduction: 'お花が大好きです。',
    prefecture_id: 6,
    phone_number: '080-6666-6666',
    is_deleted: false,
    profile_image: Rails.root.join("db/fixtures/production/test_profile_images/test_profile_images/profile-image_user6").open
  },
  
  { id: 7,
    email: 'user7@test.com',
    password: 'kinoshitahokuto',
    last_name: '木下',
    first_name: '北斗',
    last_name_kana: 'キノシタ',
    first_name_kana: 'ホクト',
    nick_name: 'Kinoshita-Hokuto',
    introduction: 'おすすめのスポットをたくさん紹介します。',
    prefecture_id: 2,
    phone_number: '080-7777-7777',
    is_deleted: false,
    profile_image: Rails.root.join("db/fixtures/production/test_profile_images/test_profile_images/profile-image_user7").open
  },
  
  { id: 8,
    email: 'user8@test.com',
    password: 'muratashoji',
    last_name: '村田',
    first_name: '正治',
    last_name_kana: 'ムラタ',
    first_name_kana: 'ショウジ',
    nick_name: 'Murata-Shoji',
    introduction: 'よろしくお願いいたします。',
    prefecture_id: 3,
    phone_number: '080-8888-8888',
    is_deleted: false,
    profile_image: Rails.root.join("test_profile_images/profile-image_user8").open
  },
  
  { id: 9,
    email: 'user9@test.com',
    password: 'yamamotonoriko',
    last_name: '山本',
    first_name: '典子',
    last_name_kana: 'ヤマモト',
    first_name_kana: 'ノリコ',
    nick_name: 'Yamamoto-Noriko',
    introduction: '素敵な写真を見るのが楽しみです。',
    prefecture_id: 2,
    phone_number: '080-9999-9999',
    is_deleted: false,
    profile_image: Rails.root.join("db/fixtures/production/test_profile_images/test_profile_images/profile-image_user9").open
  },
  
  { id: 10,
    email: 'user10@test.com',
    password: 'hirayamachie',
    last_name: '平山',
    first_name: '智惠',
    last_name_kana: 'ヒラヤマ',
    first_name_kana: 'チエ',
    nick_name: 'Hirayama-Chie',
    introduction: '共通の趣味で盛り上がりましょう！',
    prefecture_id: 2,
    phone_number: '090-1111-1111',
    is_deleted: false,
    profile_image: Rails.root.join("db/fixtures/production/test_profile_images/test_profile_images/profile-image_user10").open
  }
  
)