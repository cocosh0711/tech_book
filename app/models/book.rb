class Book < ApplicationRecord
  has_many :memos
  has_many :reading_logs
  validates :title, presence: true
  validates :total_pages, presence: true
end
