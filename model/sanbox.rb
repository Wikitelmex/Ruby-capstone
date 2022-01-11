require 'date'
today_time = Time.now
today_date = Date.new(today_time.year, today_time.month, today_time.day)
x = Date.new(2019, 12, 29)
p (today_date - x).to_i
