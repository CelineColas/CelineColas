def pretentious_execution
  puts "Starting some complex computation..."
  sleep 4
  yield
  puts "Computation over"
end

pretentious_execution() do
  puts "Computation stuff"
end
