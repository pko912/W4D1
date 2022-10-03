require 'byebug'
class PolyTreeNode
    
    attr_reader :value, :parent, :children
    
    def initialize(value,parent = nil,children = [])
        @value = value
        @parent = parent
        @children = children
    end

    def parent= passed_node

        has_parent = !@parent.nil?

        if has_parent
            @parent.children.delete(self)
        end

        @parent = passed_node
        
        return nil if self.parent == nil
        if !passed_node.children.include?(self)
            passed_node.children << self
        end
    end

    def add_child(child_node)
        @children << child_node
        child_node.parent= self
    end

    def remove_child(child_node)
        child_node.parent= nil
        raise ArgumentError.new "not a child in this node" if !@children.include?(child_node)
        @children.delete(child_node) 
    end

    def dfs(target_value)
        
        return self if self.value == target_value
        stack = self.children

        stack.each do |child_node|
            value = child_node.dfs(target_value)
            return value if !value.nil?
        end
        nil  
    end

    def bfs(target_value)
        queue = [self]
        until queue.empty?
            node = queue.shift
            if node.value == target_value
                return node
            else
                queue += node.children
            end
        end
        
    end


end

