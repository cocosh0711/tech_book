json.book do
  json.extract! @book, :total_duration, :remain_pages, :estimate_time, :number_of_remain_pages, :total_pages, :current_page
end

json.reading_logs do
  json.array! @reading_logs, :first_page, :last_page, :duration
end
