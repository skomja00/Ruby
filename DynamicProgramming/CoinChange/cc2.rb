def myprint(coins, amount, results)
  print "amount = #{amount}\n"
  print "coins...#{coins}\n"
  results.each do |row|
    print "coins #{row.sum} #{row}\n";
  end
  print "\n";
end

# @param {Integer[]} coins
# @param {Integer} "quantity of each coin"
# @return {Integer[]} all combos at least one <= amount
def combo (coins, amount, pos)
  combo(coins, amount, pos) unless pos > coins.count;

    
  end
end

# @param {Integer[]} coins
# @param {Integer} "quantity of each coin"
# @return {Integer} total of coin(s)
def add(coins, x, y, z)
  x * coins[0] +
  y * coins[1] +
  z * coins[2]
end

# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}
def coin_change(coins, amount)
  results = [];
  combos = combos(coins, amount);
  myprint(coins, amount, results)
end
coin_change([1,2,5], 11);
coin_change([1,2,5], 5);