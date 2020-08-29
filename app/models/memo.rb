class Memo < ApplicationRecord
  belongs_to :book
  validates :content, presence: true
  validates :page, presence: true
end
