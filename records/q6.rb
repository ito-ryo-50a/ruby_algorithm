n = gets.to_i
a = gets.split.map(&:to_i)
result = "No"
find_id = nil
a.each_with_index do |num, index|
  if num == 0
    result = "Yes"
    find_id = index
    break
  end
end
puts result
puts find_id unless find_id.nil?
