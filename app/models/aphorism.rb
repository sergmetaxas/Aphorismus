class Aphorism < ApplicationRecord
  
  include PgSearch
  pg_search_scope :search_by, against: [:text]
  
  belongs_to :author
  validates :text, length: { minimum: 7 }
  validates :author, presence: true

  def self.get_any
    id = pluck(:id).shuffle[0]
    find(id) if id
  end
end
