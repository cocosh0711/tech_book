json.book do
  json.extract! @book, :total_duration, :remain_pages, :estimate_time, :number_of_remain_pages
end

json.reading_logs do
  json.array! @reading_logs, :first_page, :last_page, :duration
end
