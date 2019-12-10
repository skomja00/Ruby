def myprint(coins, amount, results)
  print "amount = #{amount}\n"
  print "coins = #{coins}\n"
  results.each do |row|
    print "coins #{row.sum} #{row}\n";
  end
  print "\n";
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
  x = 0;
  y = 0;
  z = 0;
  results = [];
  max = amount / coins.sort!.min;
  while (x <= max) do
    while (y <= max) do
      while (z <= max) do
        if add(coins, x, y, z) == amount
          results.push([x, y, z]);
        end
        if add(coins, x, y, z) > amount
          break;
        end
        z += 1;
      end
      z = 0;
      y += 1;
    end
    y = 0;
    x += 1;
  end
  myprint(coins, amount, results)
end
coin_change([1,2,5], 11);
coin_change([1,2,5], 5);