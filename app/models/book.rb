class Book < ApplicationRecord
  has_many :memos
  has_many :reading_logs
  validates :title, presence: true
  validates :total_pages, presence: true

  def current_page
    last_log = reading_logs.last
    if last_log.present?
      last_log.last_page
    else
      0
    end
  end

  def total_duration
    reading_logs.sum(:duration)
  end

end
