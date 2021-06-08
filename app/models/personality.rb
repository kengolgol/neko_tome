class Personality < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '好奇心旺盛' },
    { id: 3, name: '臆病' },
    { id: 4, name: '人懐っこい' },
    { id: 5, name: '負けず嫌い' },
    { id: 6, name: 'おおらか' },
    { id: 7, name: '我が強い' },
    { id: 8, name: '真面目' },
    { id: 9, name: '生意気' },
    { id: 10, name: 'プライドが高い' },
    { id: 11, name: 'せっかち' }
  ]
 
  include ActiveHash::Associations
  has_many :guests
  has_many :hosts

  end