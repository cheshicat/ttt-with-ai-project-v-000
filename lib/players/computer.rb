module Players
  class Computer < Player

    def move(board)
    #first move - check if center cell avail & if yes take center
    if !board.taken?('5')
      '5'
      #else
      #next best move
    end

    def corner(board) #check board corners
      [0,2,6,8].detect{|cell| !board.taken?(cell+1)}
    end

    def complete_combo?(board, token)
      #check all combinations
      Game::WIN_COMBINATIONS.detect do |combo|
      ((board.cells[combo[0]] == token && board.cells[combo[1]] == token) &&
        !board.taken?(combo[2]+1)) || ((board.cells[combo[1]] == token && board.cells[combo[2]] == token) &&
        !board.taken?(combo[0]+1)) || ((board.cells[combo[0]] == token && board.cells[combo[2]] == token) &&
        !board.taken?(combo[1]+1))
      end
    end

    def win(board)
    #check if winning combo for self possible & if yes make winning move
      winning_combo = complete_combo?(board, self.token)
      if winning_combo && winning_combo.count{|index| board.position(index+1) == self.token} == 2
        puts "...found winning combo #{winning_combo}"
        winning_combo.detect{|index| !board.taken?(index+1)}
      end
    end


      #check if corners taken by opponent & if yes take opposite corner, if no then
        #check if corner taken by self & if yes, take opposite corner
        #if no take corner
      #check if winning combo for opponent possible & if yes block
    end
  end
end
