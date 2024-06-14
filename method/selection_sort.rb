# selection_sort.rb

a = gets.split.map(&:to_i)
l = a.length
(0...l).each do |n|
  m = n + a[n..-1].index(a[n..-1].max)
  a[n], a[m] = a[m], a[n]
end
puts a.join(' ')


# # 確認用
# a = gets.split.map(&:to_i)
# l = a.length
# # 配列全体を順に処理、回数は「0からa.length未満」
# (0...l).each do |n|
#   # 未整列部分の最大値を探す
#   # 最大値の要素番号m = ループの回数n（ブロック変数nの初期値は0）これが増加することで整列済みの範囲を除外していくことができる
#   # a[n..-1].index(a[n..-1].max)としてn..-1でブロック変数を使用することで未整列の範囲から最大値の要素番号を取得する
#   m = n + a[n..-1].index(a[n..-1].max)
#   # 最大値を現在の位置(未整列部分の左端)と交換
#   a[n], a[m] = a[m], a[n]
# end
# # 整列された配列を空白区切りで出力
# puts a.join(' ')
