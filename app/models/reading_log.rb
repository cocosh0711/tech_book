class ReadingLog < ApplicationRecord
  belongs_to :book
  validates :first_page, presence: true
  validates :last_page, presence: true
  validates :duration, presence: true
  validate :page_restriction

  def page_restriction
    if last_page > book.total_pages || first_page <= 0 || first_page > last_page
      errors.add(page: :invalid)
    end
  end



end
