require 'byebug'
# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
      @val = val;
      @left = nil;
      @right = nil;
  end
end


# @param {Integer[]} val
# @return {TreeNode}
def prebuild(preorder)
  r = TreeNode.new(preorder[0]) unless preorder[0].nil?;
  r.left = TreeNode.new(preorder[1]) unless preorder[1].nil?;
  r.right = prebuild(preorder[2..preorder.length]) unless preorder[2..preorder.length].nil?;
  return r;
end

# @param {Integer[]} val
# @return {TreeNode}
def inbuild(inorder)
  r = TreeNode.new(inorder[1]) unless inorder[1].nil?;
  r.left = TreeNode.new(inorder[0]) unless inorder[0].nil?;
  r.right = prebuild(inorder[2..inorder.length]) unless inorder[2..inorder.length].nil?;
  return r;
end

# @param {Integer[]} preorder
# @param {Integer[]} inorder
# @return {TreeNode}
def build_tree(preorder, inorder)
  @vals = [];
  root = prebuild(preorder);
  print_preorder(root);
  print "preorder = [#{@vals.join(',')}]\n";

  @vals = [];
  root = inbuild(inorder);
  print_inorder(root);
  print "inorder = [#{@vals.join(',')}]\n";
end

# @param {TreeNode} root
# @return {Integer[]}
def print_preorder(r)
  @vals << r.val unless r.val.nil?;
  print_preorder(r.left) unless r.left.nil?
  print_preorder(r.right) unless r.right.nil?
end

# @param {TreeNode} root
# @return {Integer[]}
def print_inorder(r)
  print_preorder(r.left) unless r.left.nil?
  @vals << r.val unless r.val.nil?;
  print_preorder(r.right) unless r.right.nil?
end

@vals = [];
preorder = [3,9,20,15,7];
inorder = [9,3,15,20,7];
build_tree(preorder, inorder);
