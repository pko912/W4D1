require_relative 'polytreenode'

class KnightPathFinder

    def self.valid_moves(pos)
        @considered_positions = [pos]
    end

    def initialize(start_pos)
        @root_node = PolyTreeNode.new(start_pos)
        
    end

    def build_move_tree
    end

    def new_move_positions(pos)
        KnightPathFinder.valid_moves(pos)
    end







    def find_path(arr)

    end



end
