require 'minitest/autorun'
require_relative '../binay_search'

class BinarySearchTest < Minitest::Test
  def test_binary_search
    # case1: ターゲットが配列の中に存在する場合
    array = [10, 7, 9, 4, 5, 1, 6, 3, 8, 2]
    target = 9
    expected_result = 8
    assert_equal expected_result, binary_search(array, target)

    # case1: ターゲットが配列の中に存在しない場合
    array = [10, 7, 9, 4, 5, 1, 6, 3, 8, 2]
    target = 11
    expected_result = -1
    assert_equal expected_result, binary_search(array, target)
    # case1: 与えられた配列が空値の場合
    array = []
    target = 9
    expected_result = -1
    assert_equal expected_result, binary_search(array, target)

    # case1: 配列に1つの要素しかない場合
    array = [9]
    target = 9
    expected_result = 0
    assert_equal expected_result, binary_search(array, target)

    # case1: 配列に1つの要素しかない、かつターゲットが存在しない場合
    array = [10]
    target = 9
    expected_result = -1
    assert_equal expected_result, binary_search(array, target)
  end
end
