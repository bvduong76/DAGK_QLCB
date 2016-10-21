class Changbay < ApplicationRecord
  validates :ma, uniqueness: true, presence: true, length: {is: 5}
end
