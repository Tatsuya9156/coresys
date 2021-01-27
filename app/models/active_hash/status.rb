class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '受注' },
    { id: 2, name: '現地調査' },
    { id: 3, name: '見積作成' },
    { id: 4, name: '検討中' },
    { id: 5, name: '成約' },
    { id: 6, name: '商品手配' },
    { id: 7, name: '工事' },
    { id: 8, name: '完了' }
  ]

  include ActiveHash::Associations
  has_many :customers

  end