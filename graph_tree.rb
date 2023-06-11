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
        
    end
end