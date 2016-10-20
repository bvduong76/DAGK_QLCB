class Sanbay < ApplicationRecord
  validates :masanbay, presence: true, uniqueness: true
  has_many :active_relationships, class_name:  "Relationship",
           foreign_key: "sanbaydi_id",
           dependent:   :destroy
  has_many :passive_relationships, class_name:  "Relationship",
           foreign_key: "sanbayden_id",
           dependent:   :destroy
  has_many :flying, through: :active_relationships, source: :sanbayden
  has_many :flyed, through: :passive_relationships, source: :sanbaydi
end
