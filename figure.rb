class Figure

	def check_if_tile_avail
			if ((0..7).include?(@test_move[0])) && ((0..7).include?(@test_move[1]))
			@avail_moves << @test_move if @board[@test_move[0]][@test_move[1]] == "--" 
		else
			puts "Out of board"
		end
	end

end
