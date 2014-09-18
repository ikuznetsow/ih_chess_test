
class Knight
	
	def legal_moves(position,first_move)
		m = []
		puts "checking all legal moves for Knight from position:"
		puts position
		possible_moves = [ -201, -199, -102, -98, 98, 102, 199, 201 ]
		possible_moves.each { |x| m.push (position + x) if (101..808).include?(position + x) && (position + x) % 100 < 9 }
		m
	end

end

