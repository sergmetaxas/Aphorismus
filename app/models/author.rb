class Author < ApplicationRecord
  has_many :aphorism
  validates :name, presence: true
end
