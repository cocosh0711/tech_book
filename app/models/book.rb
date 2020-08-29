class Book < ApplicationRecord
  validates :title, presence: true
  validates :total_pages, presence: true
end
