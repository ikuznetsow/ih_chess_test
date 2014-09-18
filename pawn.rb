
class Pawn < Figure
	# only for white pieces now !
	
	def legal_moves(tile_address,board,first_move)
		tile_address = tile_address
		# tile_from_number = tile_from_number
		first_move = first_move
		@board = board

		@avail_moves = []
		 
		@test_move = [0, 0] #number then letter
		@test_move = [(tile_address[0] - 1), tile_address[1]]
		check_if_tile_avail

		@test_move = [(tile_address[0] - 2), tile_address[1]] if first_move 
		check_if_tile_avail

		@avail_moves		
	end

end

