
class Move
	
	
	def convert_to_tile_address
		@initial_tile = current_move_text[0]
		@final_tile = current_move_text[1]

		board_letters = ("a".."h").to_a 
		@initial_letter = board_letters.index(@initial_tile[0])
		@initial_number = (@initial_tile[1].to_i - 8).abs

		@final_letter = board_letters.index(@final_tile[0])
		@final_number = (@final_tile[1].to_i - 8).abs
		@current_move = [@final_number, @final_letter]
	end
end
