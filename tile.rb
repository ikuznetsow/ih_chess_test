class Tile

	def tile_address(current_tile_text)
		@current_tile_text = current_tile_text

		board_letters = ("a".."h").to_a 
		@tile_letter = board_letters.index(@current_tile_text[0])
		@tile_number = (@current_tile_text[1].to_i - 8).abs

		@current_tile_address = [@tile_number, @tile_letter]

	end

end