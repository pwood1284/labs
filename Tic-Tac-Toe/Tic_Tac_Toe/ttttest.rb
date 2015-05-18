require 'minitest/autorun'
require './board'

class BoardTest < MiniTest::Test
  def test_can_create_a_board
    board = Board.new
    assert_instance_of Board, board
  end
end
