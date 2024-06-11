def sum_of_case_digits(n)
  sum = 0
  while n > 0
    sum += n % 10
    n /= 10
  end
  sum
end
N, A, B = gets.split.map(&:to_i)
result = 0
(1..N).each do |num|
  calculated_value = sum_of_case_digits(num)
  if calculated_value >= A && calculated_value <= B
    result += num
  end
end
puts result




def sum_of_digits(n)
  n.to_s.chars.map(&:to_i).sum
end
N, A, B = gets.split.map(&:to_i)
result = (1..N).select { |num| (A..B).include?(sum_of_digits(num)) }.sum
puts result
