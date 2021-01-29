# !/usr/bin/env ruby

require_relative './../lib/validation'
require_relative './../lib/win_combinations'
require_relative './../lib/board'

$turn = 1

$win = false

player_x = []
player_o = []

puts 'Welcome! You are Player X. Press any key to move on to the next player.'
gets.chomp

puts 'Welcome! You are Player O. Press any key to begin the game.'
gets.chomp

game_playing = true

while game_playing
  if $turn.odd?
    puts "It's your turn again Player X."
    puts 'Select the slot to place your X.'
    board = Board.new
    board.initialize_board
    slot_selected = gets.chomp.to_i
    player_x.push(slot_selected)
    val = Validation.new
    val.next_turn(slot_selected, 'X')
    win = WinCombinations.new
    win.win_combos(player_x, 'Player X')
    $turn += 1

  elsif $turn.even?
    puts "It's your turn again Player O."
    puts 'Select the slot to place your O.'
    board = Board.new
    board.initialize_board
    slot_selected = gets.chomp.to_i
    player_o.push(slot_selected)
    val = Validation.new
    val.next_turn(slot_selected, 'O')
    win = WinCombinations.new
    win.win_combos(player_o, 'Player O')
    $turn += 1
  end
  if $win == true
    game_playing = false
    puts "Congratulations #{$winner}! You are the winner!"
  elsif $turn > 9 && $win == false
    game_playing = false
    puts "It's a draw. Better luck next time guys."
  end
end
