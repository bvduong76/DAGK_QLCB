class Sanbay < ApplicationRecord
  validates :masanbay, uniqueness: true, presence: true, length: {is: 3}
  validates :tensanbay, presence: true
end
