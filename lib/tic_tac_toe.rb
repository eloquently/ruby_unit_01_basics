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

# board.rb contains some helper methods for dealing with the board.
# You can take a look at this file, but write the code for this file first

require_relative './board'

# create an empty board to start with
# board is a 2D array (an array containing 3 arrays, each with 3 elements)

board = [
            ['','',''],
            ['','',''],
            ['','','']
        ]

current_player = "X"

# the general structure of the game will be a loop
# here's the basic structure of the program:
# 1) draw the bord 2) take input 3) change the board based on input 4) repeat

while true
    # draw the board
    puts draw_board(board)

    # output instructions to the user:
    # puts "It is #{ ____ }'s turn. "

    puts "Type your move in the format Row,Column"


    # command will store the users command
    # command = _______

    if command == "quit"
        # exit the loop
        break
    else
        # command should look something like 0,2

        # parse the command, so that position is an array like [0, 2]
        # hint: look for ways to convert strings to arrays in your lecture
        # notes, Google, or the Ruby String documentation

        # position = command.________

        # extract the row and column and convert them to integers from strings
        # row = position[____].to_i
        # column = position[____].to_i

        # now change the board to reflect the user's move
        # implement the change_board method in the board.rb file and fill in
        # the parameters here.

        # change_board(______________)

        # notice that we could have placed all the code for the change_board
        # method here. However, we don't do that for a few reasons:
        # 1) separating the code makes the program cleaner and easier to
        #    understand
        # 2) we are able to test the change board method separately
        # 3) if our program became more complicated, we might have to invoke
        #    the change_board method multiple times. We wouldn't want to repeat
        #    the code.

        # now we need to switch the current player so that we are playing
        # as the correct player the next time we go through the loop

        # if ______
        #     _____
        # else
        #     _____
        # end
    end
end

# Once you're done you can play tic tac toe by running the program in the shell
# with the following command:
# ruby lib/tic_tac_toe.rb

# For bonus points, try dealing with the exceptions you raise in the change_board
# method when a move is invalid or the row/column is out of range

# We will write a method to check the winner when we talk about data structures
# a few days from now