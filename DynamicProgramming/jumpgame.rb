# @param {Integer[]} nums
# @return {Boolean}
def can_jump_from_position(pos, nums)
  return true if pos == nums.length - 1;
  furthestjump = [pos + nums[pos], nums.length - 1].min;
  npos = pos + 1;
  while (npos <= furthestjump)
    return true if can_jump_from_position(npos,nums);
    npos += 1;
  end
  return false;
end

def can_jump(nums)
  return can_jump_from_position(0, nums);
end

print "input [2,3,1,1,4]\n";
print "output: #{can_jump [2,3,1,1,4]}\n";

print "input: [3,2,1,0,4]\n";
print "output: #{can_jump [3,2,1,0,4]}\n";