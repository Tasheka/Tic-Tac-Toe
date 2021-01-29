# rubocop:disable Lint/UselessAssignment

class Board
  $board = %w[1 2 3 4 5 6 7 8 9]

  def initialize_board
    puts 'Enter an available number from 1-9 to select the corresponding slot on the game board.'
    puts " #{$board[0]} | #{$board[1]} | #{$board[2]} "
    puts ' ---------- '
    puts " #{$board[3]} | #{$board[4]} | #{$board[5]} "
    puts ' ---------- '
    puts " #{$board[6]} | #{$board[7]} | #{$board[8]} "

    initialize_board = true
  end
end

# rubocop:enable Lint/UselessAssignment
