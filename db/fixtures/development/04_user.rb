User.seed(
  { id: 1,
    email: 'user1@test.com',
    password: 'aabbcc',
    last_name: 'テスト',
    first_name: '太郎',
    last_name_kana: 'テスト',
    first_name_kana: 'タロウ',
    nick_name: 'Taro',
    introduction: '初めまして！',
    prefecture_id: 2,
    phone_number: '080-1111-1111',
    is_deleted: false,
    profile_image: Rails.root.join("app/assets/images/no_image.jpg").open
  },

  { id: 2,
    email: 'user2@test.com',
    password: 'ddeeff',
    last_name: 'テスト',
    first_name: '花子',
    last_name_kana: 'テスト',
    first_name_kana: 'ハナコ',
    nick_name: 'hanako',
    introduction: '初めまして！',
    prefecture_id: 3,
    phone_number: '080-2222-2222',
    is_deleted: false,
    profile_image: Rails.root.join("app/assets/images/no_image.jpg").open
  }
)