# eachで記述した場合
n = gets.to_i
a = gets.split.map(&:to_i)
result = "No"
a.each do |num|
  if num == 0
    result = "Yes"
    break
  end
end
puts result



# forで記述した場合
n = gets.to_i
a = gets.split.map(&:to_i)
result = "No"
for num in a do
  if num == 0
    result = "Yes"
    break
  end
end
puts result
