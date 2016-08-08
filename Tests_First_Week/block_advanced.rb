def execute_with_timer()
  start_time = Time.now
  yield
  end_time = Time.now
  return end_time - start_time
end

time = execute_with_timer() do
  1 + 1
  sleep (1)
end
p time

time = execute_with_timer() do
  sleep (3)
end
p time

time = execute_with_timer() do
  puts "yes"
end
p time




def greets(name)
  cap_name = name.capitalize
  yield(cap_name)
end

greets(name) do |name|
  puts "Bonjour #{name}"
end

greets(name) do |name|
  puts "Hello #{name}"
end
