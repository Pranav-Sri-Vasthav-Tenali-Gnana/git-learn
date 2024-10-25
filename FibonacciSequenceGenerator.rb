# Fibonacci Sequence Generator in Ruby

def fibonacci(n)
  sequence = [0, 1]
  (2...n).each do |i|
    sequence << sequence[i - 1] + sequence[i - 2]
  end
  sequence[0...n]
end

puts "Enter the number of terms for Fibonacci sequence:"
terms = gets.chomp.to_i

if terms <= 0
  puts "Please enter a positive integer."
else
  puts "Fibonacci sequence (#{terms} terms): #{fibonacci(terms).join(', ')}"
end
