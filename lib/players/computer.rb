module Players
  class Computer < Player

    def move(board)
    #first move - check if center cell avail & if yes take center
    if !board.taken?('5')
      '5'
      #else
      #next best move
    end

    def corner(board)
      [0,2,6,8].detect{|cell| !board.taken?(cell+1)}
    end

      #check if corners taken by opponent & if yes take opposite corner, if no then
        #check if corner taken by self & if yes, take opposite corner
        #if no take corner
      #check if winning combo for self possible & if yes make winning move
      #check if winning combo for opponent possible & if yes block

    end
  end
end
