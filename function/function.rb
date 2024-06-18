def gs() gets.chomp end
def gi() gets.chomp.to_i end
def gsmi() gets.split.map(&:to_i) end
def desk(array) array.sort! {|x, y| y <=> x} end
def puts_val(h)
  s = " "
  h.each {|key, value| s << "#{key} : #{value}"}
  puts s
end
######## functions ########


#
# リファクタリングしたコード
# ACしたコード
