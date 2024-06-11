# https://atcoder.jp/contests/abc095/tasks/abc095_a


#　リファクタリングしたコード、このパターンでも実行時間が増加したため、安易にワンライナーにしない方がいい場合もあるようだ
puts 700 + gets.count("o") * 100


# ACしたコード
n = gets.count("o")
puts 700 + n * 100
