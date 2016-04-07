require 'board'


describe "board.rb" do
    let(:board) { [ ['X', '', 'O'], ['X','O',''], ['','X',''] ] }

    describe "#draw_board" do
        it 'draws_board' do
            expected_output = ""
            expected_output += "X |   | O\n"
            expected_output += "---------\n"
            expected_output += "X | O |  \n"
            expected_output += "---------\n"
            expected_output += "  | X |  "
            expect(draw_board(board)).to eq(expected_output)
        end
    end

    describe "#change_board" do
        it 'adds x to 0,1' do
            new_board = change_board(board, 0, 1, 'X')
            expect(new_board[0][1]).to eq('X')
        end

        it 'raises expection if row is too low' do
            expect { change_board(board, -1, 0, 'X') }.to raise_exception
        end

        it 'raises expection if row is too high' do
            expect { change_board(board, 3, 0, 'X') }.to raise_exception
        end

        it 'raises expection if col is too low' do
            expect { change_board(board, 0, -1, 'X') }.to raise_exception
        end

        it 'raises expection if col is too high' do
            expect { change_board(board, 0, 3, 'X') }.to raise_exception
        end
    end
end