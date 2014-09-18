require 'pry'
require_relative 'figure'
require_relative 'pawn'
require_relative 'knight'
require_relative 'board'
require_relative 'tile'


first_move=true

# Make new objects
new_board = Board.new
pawn = Pawn.new
tile = Tile.new

current_board = new_board.load_from_file('simple_board.txt')

test_tile = "a2"
final_tile = "a4"
initial_address = tile.tile_address(test_tile)
final_address = tile.tile_address(final_tile) 

piece = current_board[tile.tile_address(test_tile)[0]][tile.tile_address(test_tile)[1]]

if piece[1] === "P" 
 	puts "Checking Pawn"
 	avail_moves = pawn.legal_moves(initial_address, current_board, first_move)
 	
 	print piece, initial_address, final_address
 	
  if avail_moves.include?(final_address)  
  	puts "Legal move"
  else
  	puts "Illegal move"
  end
elsif piece[1] === "-" 
 	puts "Not piece at initial point !"
end

