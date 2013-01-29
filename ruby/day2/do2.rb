# Create tree with clean user interfaceo

class Tree
    attr_accessor :children, :node_name

    def initialize(tree_data)
        @node_name = tree_data.keys[0]
        @children = tree_data[@node_name].map {|n| Tree.new(Hash[*n])}  
    end

    def visit_all(&block)
        visit &block
        children.each {|c| c.visit_all &block}
    end
    
    def visit(&block)
        block.call self
    end
end

tree_data = {'grandpa' => 
                {'dad' => 
                    {'child 1' => {}, 
                     'child 2' => {}}, 
                 'uncle' => 
                    {'child 3' => {}, 
                     'child 4' => {}}}}

ruby_tree = Tree.new(tree_data)

puts 'Visiting a node'
ruby_tree.visit {|node| puts node.node_name}
puts

puts 'Visiting entire tree'
ruby_tree.visit_all {|node| puts node.node_name}
