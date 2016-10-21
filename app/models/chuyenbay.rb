class Chuyenbay < ApplicationRecord
  validates :sanbayden, presence: true
  validates :sanbaydi, presence: true
end
