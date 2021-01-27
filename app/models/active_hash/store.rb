class Store < ActiveHash::Base
  self.data = [
    { id: 1,  name: '名古屋本店' },
    { id: 2,  name: '長久手支店' },
    { id: 3,  name: '南知多支店' },
    { id: 4,  name: '豊橋支店' },
    { id: 5,  name: '一宮支店' },
    { id: 6,  name: '春日井支店' },
    { id: 7,  name: '岐阜支店' }
    { id: 8,  name: '養老支店' },
    { id: 9,  name: '多治見支店' },
    { id: 10,  name: '中津川支店' },
    { id: 11, name: '四日市支店' }
    { id: 12, name: '伊勢支店' }
    { id: 13, name: '浜松支店' }
    { id: 14, name: '栄ショールーム' }
    { id: 15, name: '亀山ショールーム' }
    { id: 16, name: '関ショールーム' }
  ]

  include ActiveHash::Associations
  has_many :customers

  end