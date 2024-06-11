N = gets.to_i
t = [0]
x = [0]
y = [0]
N.times do
  ti, xi, yi = gets.split.map(&:to_i)
  t << ti
  x << xi
  y << yi
end
can = true
N.times do |i|
  dt = t[i + 1] - t[i]
  dist = (x[i + 1] - x[i]).abs + (y[i + 1] - y[i]).abs
  if dt < dist || dist % 2 != dt % 2
    can = false
    break
  end
end
puts can ? "Yes" : "No"
