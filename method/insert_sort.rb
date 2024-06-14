# insert_sort.rb

a = gets.split.map(&:to_i)
l = a.length
(0...l).each do |m|
  min = m
  ((i+1)...l).each do |n|
    if a[n] < a[min]
      min = n
    end
  end
  a[m], a[min] = a[min], a[m]
end
puts a.join(' ')
