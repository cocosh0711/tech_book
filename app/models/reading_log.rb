class ReadingLog < ApplicationRecord
  belongs_to :book
  validates :first_page, presence: true
  validates :last_page, presence: true
  validates :duration, presence: true


  
end
