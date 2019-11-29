require 'byebug';
#Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val;
        @left = nil;
        @right = nil;
    end
end

# @param {TreeNode} root
# @return {Integer[]}
# Inorder Traversal:
#   traverse the left subtree 
#   then visit the root node 
#   finally traverse the right subtree
def inorder_traversal(r)
  inorder_traversal(r.left)  unless r.left.nil?
  @vals << r.val unless r.val.nil?;
  inorder_traversal(r.right) unless r.right.nil?
  return @vals;
end

@vals = [];
print "input: [4,nil,7,nil,3,9,1,8,2]\n";
root = TreeNode.new(4);
root.left = nil;
root.right = TreeNode.new(7);
r = root.right;
r.left = nil;
r.right = TreeNode.new(3);
r = r.right;
r.left = TreeNode.new(9);
r.right = TreeNode.new(1);
r = r.right;
r.left = TreeNode.new(8);
r.right = TreeNode.new(2);
print "output: [#{inorder_traversal(root).join(',')}]\n\n";

@vals = [];
print "input: [1,nil,2,3]\n"
root = TreeNode.new(1);
root.left = nil;
root.right = TreeNode.new(2);
r = root.right;
r.left = TreeNode.new(3);
r.right = nil;
print "output: [#{inorder_traversal(root).join(',')}]\n\n";
