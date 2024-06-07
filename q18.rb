H, W = gets.split.map(&:to_i)
N, M = gets.split.map(&:to_i)
puts "H: #{H},W: #{W},N: #{N},M: #{M}"

arr = readlines.map(&:strip)
puts "arr: #{arr}"

Q = arr[N].chomp.to_i
puts "Q: #{Q}"

set_field = Array.new(H){ Array.new(W, "_") }
puts "set_field: #{set_field}"

count = 0
pattern = []
while count < N do
    pattern << arr[count]
    count += 1
end
puts "pattern: #{pattern}"
