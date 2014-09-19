require 'pry'
require_relative 'tile'
require_relative 'board'
require_relative 'move'
require_relative 'figure'
require_relative 'pawn'
require_relative 'knight'
require_relative 'validator'


# Make new objects
new_board = Board.new
move = Move.new 
tile = Tile.new
validator = Validator.new

first_move=true
current_board = new_board.load_from_file('simple_board.txt')
moves = move.load_from_file('simple_moves.txt')

moves.each do |current_move| 
	initial_address = tile.tile_address(current_move[0]) #a2
	final_address = tile.tile_address(current_move[1]) #a3
 
	print current_move.to_s,"  "
	puts validator.check_move(initial_address, final_address, current_board, first_move)
end



