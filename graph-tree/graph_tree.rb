require 'set'

class GraphNode
    attr_accessor :value, :neighbors

    def initialize(value)
        self.value = value
        self.neighbors = []
    end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

def bfs(starting_node, target_value, mem = Set.new())
    queue = []
    queue << starting_node
    while !queue.empty?
        temp = queue.shift
        if !temp.value == target_value
            mem.add(temp)
        elsif temp.value == target_value
            return temp.value
        end
        return nil if temp.neighbors.all? { |i| mem.include?(i) }
        temp.neighbors.each { |i| queue << i if !mem.include?(i) }
    end
end

p bfs(a, 'b')
p bfs(a, "f")