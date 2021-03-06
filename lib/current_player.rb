def turn_count(board_array)
	count = 0
	full = true
	board_array.each do |space|
		if space == "X" || space == "O"
			count += 1
		elsif space == " "
			full = false
		end
	end
	return count
end

def current_player(board_array)
	#determine if it's X or O's turn
	count = 0
	full = true
	board_array.each do |space|
		if space == "X" || space == "O"
			count += 1
		elsif space == " "
			full = false
		end
	end
	if full == true
		return "Game over"
	elsif count % 2 == 0
		return "X"
	else
		return "O"
	end
end
