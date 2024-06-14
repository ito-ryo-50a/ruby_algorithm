# bubble_sort.rb

array = gets.split.map(&:to_i)
len = array.length
(0...len).each do |count|
  (0...(len - count - 1)).each do |i|
    if array[i] > array[i + 1]
      array[i], array[i +  1] = array[i + 1], array[i]
    end
  end
end
puts array.join(' ')



# # 確認用

# array = gets.split.map(&:to_i)
# # 入力値を整数型に変換して配列に格納
# len = array.length
# # 配列の長さを取得
# (0...len).each do |a|
# # 0からlen「未満」でループ、配列全体の処理を管理
#   (0...(len - a - 1)).each do |b|
#   # 0から配列の長さ（len）引く外側のループが回転した回数（count）引く1までループする
#   # 内側のループはソート済み配列の最後の部分を除外するために範囲を減らしていきます
#     if array[b] > array[b + 1]
#       # 隣り合わせた数の左辺が大きければ
#       array[b], array[b +  1] = array[b + 1], array[b]
#       # 代入処理をワンライナーで書くことで一時変数を使わずに値を交換した
#     end
#   end
# end
# puts array.join(' ')
# # ソートした配列を空白区切りで出力
