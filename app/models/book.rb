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

  def remain_pages
    read_counts = [0] * total_pages
    reading_logs.each do |reading_log|
      ((reading_log.first_page)..(reading_log.last_page)).each do |i|
        read_counts[i-1] += 1
      end
    end
    result = []
    read_counts.each_with_index { |read_count, i| result << i + 1 if read_count.zero? }
    result
  end
end
