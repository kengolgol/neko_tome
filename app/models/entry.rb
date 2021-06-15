class Entry < ApplicationRecord
  belongs_to :guest
  belongs_to :host
  belongs_to :room
end
