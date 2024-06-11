# メソッドチェーンの途中に挿入してデバッグできる
# tapメソッドはブロックの中身を実行してレシーバー自身を返すため結果に影響しない
# 反対に、処理を実行することも可能

# 実践的な用法　https://style.potepan.com/articles/30478.html
# https://docs.ruby-lang.org/ja/latest/method/Object/i/tap.html

tap{ |n| puts "n: #{n}" }

# Object#tap

# ex
#
# [1, 2, 3, 4, 5]
# .sort
# .tap{ |n| puts "n: #{n}" }
# .reverse
# .tap{ |n| puts "n: #{n}" }

# => "n: [1, 2, 3, 4, 5]"
# => "n: [5, 4, 3, 2, 1]"
