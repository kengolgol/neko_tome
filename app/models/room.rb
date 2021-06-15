class Room < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :entries, dependent: :destroy
  has_many :guests, through: :entries
  has_many :hosts, through: :entries
end
