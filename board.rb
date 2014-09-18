require 'pry'

class Board

	def initialize
	end
	
	def load_from_file(file_to_load)
		@file_to_load = file_to_load
		board_loaded = File.open(file_to_load, 'r')
		board_loaded_lines = board_loaded.readlines
		board_array = []
		board_loaded_lines.each { |row| board_array << row.split(' ') }
		board_array
	end

end
