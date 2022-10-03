require_relative 'polytreenode'
require 'byebug'

class KnightPathFinder

    def self.valid_moves(pos)
        relative_arr = [[-2,-1],[-2,1],[-1,-2],[1,2],[1,-2],[1,2],[2,-1],[2,1]]
        debugger
        valid_moves = relative_arr.map {|moves| moves+pos}
        
        filtered_moves = valid_moves.select do |moves|
            
            (moves[0] > 0 && moves[0] < 7) && (moves[1] > 0 && moves[1] < 7) 
        end 
        filtered_moves
    end

    def initialize(start_pos)
        @root_node = PolyTreeNode.new(start_pos)
        @considered_positions = [start_pos]
        
    end

    def build_move_tree
    end

    def new_move_positions(pos)
        KnightPathFinder.valid_moves(pos)
    end

    def find_path(arr)

    end



end

# p k = KnightPathFinder.new([0,0])
p KnightPathFinder.valid_moves([3,0])
