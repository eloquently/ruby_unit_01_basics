##
# #change_board takes as arguments:
#
#   * board - a 2D array representing the state of the board before the change
#   * row - a number between 0 and 2 where the next move is played
#   * col - a number between 0 and 2 where the next move is played
#   * player - "X" or "O"
#
# It returns a new 2D array representing the new board state after the play
# has been made

def change_board(board, row, col, player)
    # don't worry about this next line yet
    new_board = board.map(&:clone)

    # Since the user enters the row and column values, we need to make sure
    # they are valid (i.e. between 0 and 2)
    if row < 0 or row > 2 or col < 0 or col > 2
        raise ArgumentError.new("Column and row must be between 0 and 2")
    end

    # before we place a piece, we need to make sure it isn't already taken
    if new_board[row][col] == ''
        # uncomment the next line and fill in the blanks:
        new_board[row][col] = player
    else
        raise ArgumentError.new('Space already occupied')
    end

    return new_board
end

# Here is a utility method we've written for you. You don't need to worry
# about how this work just yet

##
# #draw_board takes one argument, board, a 2D array, and it returns a visual
# representation of the board as a string

def draw_board(board)
    formatted_rows = board.map do |r|
        # replace all elements that are not X's or O's with spaces
        formatted_row = r.map { |i| ( (i == "O") or (i == "X") ) ? i : ' ' }
        formatted_row.join(' | ')
    end
    return formatted_rows.join("\n---------\n")
end
