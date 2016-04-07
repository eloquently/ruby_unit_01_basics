# First things first:
# Let's install Bundler.
# Bundler allows us to keep track of all the external libraries (gems) we need
# Bundler makes it easy to update gems, install a bunch of new ones, and
# ensure that all the gems we have remain compatible as they get updated

# In your terminal, run:

# gem install bundler

# Bundler installs all gems listed in the file called Gemfile. Take a look at it

# To install all the gems in your Gemfile, run this in your terminal:

# bundle install

# For this exercise, we've provided a fully detailed spec file. Your goal is to
# make all the tests pass. The tests are written in the order you should
# complete them in.

# Instead of manually running your tests every time you make a change, we have
# set up the Guard gem to run your tests each time the code is saved.
# Run this in your terminal to start guard:

# bundle exec guard



# We're going to build a tic-tac-toe command line app.
# We've outlined the code and you just need to fill in the blanks

require_relative './board'

# create an empty board to start with
board = [
            ['','',''],
            ['','',''],
            ['','','']
        ]


current_player = "X"
# Let's make a loop to take in input from the user
while true
    # draw the board
    puts draw_board(board)


    # Output instructions to the user:
    # puts "It is #{ ____ }'s turn. "
    puts "Type your move in the format Row,Column"


    # command will store the users command
    command = gets.chomp

    if command == "quit"
        # exit the loop
        break
    else
        # command should look something like 0,2

        # parse the command, so that position is an array like [0, 2]
        position = command.split(',')

        # extract the row and column
        row = position[0].to_i
        column = position[1].to_i


        # now change the board to reflect the user's move
        board = change_board(board, row, column, current_player)

        # now we need to switch the current player so that we are playing
        # as the correct player the next time we go through the loop

        if current_player == "X"
             current_player = "O"
        else
             current_player = "X"
        end
    end
end

# Once you're done you can play tic tac toe by running the program in the shell
# with the following command:
# ruby lib/tic_tac_toe.rb