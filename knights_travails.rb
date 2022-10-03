require_relative 'polytreenode'

class KnightPathFinder

    def self.valid_moves(pos)
        relative_arr = [[-2,-1],[-2,1],[-1,-2],[1,2],[1,-2],[1,2],[2,-1],[2,1]]
        valid_moves = relative_arr.map {|moves| moves+pos}
        valid_moves.select do |arr|

            (moves[0] > 0 && moves[0] < 7) && (moves[1] > 0 && moves[1] < 7) 
            

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
