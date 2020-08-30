class Memo < ApplicationRecord
  belongs_to :book
  validates :content, presence: true
  validates :page, presence: true
  validate :page_restriction

  def page_restriction
    if page > book.total_pages || page <= 0
      errors.add(page: :invalid)
    end
  end

end
