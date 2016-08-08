require 'date'

def days_to_xmas()
  today_date = Date.today
  xmas_date = Date.new(%Y,%m,%d)
  long_wait = xmas_date - today_date
  return "#{long_wait.to_i} days to Christmas"
 end

 puts days_to_xmas()
