# binary_search.rb
# 標準入力から取得したarrのソートはパフォーマンスを考慮して分けて記述

array = gets.split.map(&:to_i)
array = array.sort
low = 0
high = array.length - 1
target = 9  # 探索する値に置換
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



# テスト実行時はコメント解除し下記コマンド実行
# `ruby method/test/binary_search_test.rb`

# def binary_search(array, target)
#   array = array.sort
#   low = 0
#   high = array.length - 1
#   result = -1
#   while low <= high do
#     mid = (low + high) / 2
#     if array[mid] == target
#       result = mid
#       break
#     elsif array[mid] < target
#       low = mid + 1
#     else
#       high = mid - 1
#     end
#   end
#   result
# end
