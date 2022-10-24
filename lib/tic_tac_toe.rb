class TicTacToe
    WIN_COMBINATIONS = [
        [0,1,2],
        [3,4,5],
        [6,7,8],
        [0,3,6],
        [1,4,7],
        [2,5,8],
        [0,4,8],
        [6,4,2]
    ]

    def initialize
        @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
        # binding.pry
    end

    def display_board
        result = @board.map do |item|
            # puts item
            # binding.pry
            return " O " unless !item.nil?
            " #{item} "
        end

        @i = 0
        while @i < 9 do
            puts result.slice(@i, @i+3).join("|")
            puts "-----------"
            @i += 3
        end
    end

    def input_to_index (index)
        if(index.to_i < 0)
            input_to_index(9 - index.to_i)
        elsif(index.to_i < 1)
            0
        elsif(index.to_i > 9)
            8
        else
            index.to_i - 1
        end
    end

    def move (index, player_token = "X")
        @board[index.to_i] = player_token
    end

    def position_taken?(position)
        @board[input_to_index(position)].nil?
    end
end

# binding.pry