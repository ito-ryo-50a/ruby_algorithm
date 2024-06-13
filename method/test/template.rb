require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample_case
    assert_equal 'A', 'a'.upcase
  end
end

# クラス名はキャメルケース
# ファイル名はスネークケース
# メソッド名は "test_" 始まり
# assert_equal 期待する結果, テスト対象となる値や式

# a == b　でパス
# def test_equality
#   a = 10
#   b = 10
#   assert_equal b, a
# end

# a == true でパス
# def test_true
#   a = true
#   assert a
# end

# a == false　でパス
# def test_false
#   a = false
#   refute a
# end
