class Sex < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '男性' },
    { id: 3, name: '女性' },
    { id: 4, name: 'どちらでもない' }
  ]
 
  include ActiveHash::Associations
  has_many :guests
  has_many :hosts

  end