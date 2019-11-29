# Palindrome

Search for palindromic substrings, return a hash of matches/lengths indicating the longest.

- written in Ruby

- uses some recursion mixed with traditional looping. No fancy algorigthm just crunches
through the entire string left to right

```ruby
def pal (i, j)
  return true if j < i;
  pal(i + 1, j - 1) if @str[i].eql?(@str[j]);
end
```

- Output:  
![Sample Palindrome output:](https://github.com/skomja00/Ruby-programming-sandbox/blob/master/Palindrome/pal_output.png?raw=true)

  
  
 
