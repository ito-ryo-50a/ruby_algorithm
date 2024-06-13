# binary_search.rb
# 標準入力から取得したarrのソートはパフォーマンスを考慮して分けて記述


array = gets.split.map(&:to_i)
array = array.sort
low = 0
high = array.length - 1
target = 9  # 探索する目標に置き換える
result = -1
while low <= high do
  mid = (low + high) / 2
  if array[mid] == target
    result = mid
    break
  elsif array[mid] < target
    low = mid + 1
  else
    high = mid - 1
  end
end
puts result
