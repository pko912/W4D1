require_relative 'polytreenode'
require 'byebug'

class KnightPathFinder

    attr_accessor :considered_positions , :value

    def self.valid_moves(pos)
        relative_arr = [[-2,-1],[-2,1],[-1,-2],[-1,2],[1,-2],[1,2],[2,-1],[2,1]]
        valid_moves = []
        relative_arr.each do |moves| 
            x = moves[0] + pos[0]
            y = moves[1] + pos[1]
            valid_moves << [x,y]
        end

        filtered_moves = []
        valid_moves.each do |moves|
            x = moves[0]
            y = moves[1]

            if !((x < 0 || x > 7) || (y < 0 || y > 7))
                filtered_moves << moves
            end
        end
        filtered_moves

    end

    def initialize(start_pos)
        @root_node = PolyTreeNode.new(start_pos)
        @considered_positions = [start_pos]
        @value = start_pos
    end

    def build_move_tree
       queue = [@root_node]
       until queue.empty?
         curr_pos = queue.shift
         queue += curr_pos.new_move_positions(curr_pos.value)
       end



    end

    # def bfs(target_value)
    #     queue = [self]
    #     until queue.empty?
    #         node = queue.shift
    #         if node.value == target_value
    #             return node
    #         else
    #             queue += node.children
    #         end
    #     end
        
    # end

    def new_move_positions(pos)
        KnightPathFinder.valid_moves(pos) - @considered_positions
    end

    def find_path(arr)

    end



end

p k = KnightPathFinder.new([0,0])
p k.value
# p KnightPathFinder.valid_moves([4,4])
p k.considered_positions << [1,2]
p k.new_move_positions([0,0])
