class Relationship < ApplicationRecord
  belongs_to :sanbaydi, class_name: "Sanbay"
  belongs_to :sanbayden, class_name: "Sanbay"
  validates :sanbaydi_id, presence: true
  validates :sanbayden_id, presence: true
end
