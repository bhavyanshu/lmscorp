class Lesson < ApplicationRecord
  belongs_to :company

  validates :name, presence: true, format: {with: /\A^[0-9a-zA-Z]*$\Z/i}
end
