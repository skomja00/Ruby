#Interview Question 
#Software Development Engineer Interview (Student Candidate) Seattle, WA
#Coding Challenge 1) Find the longest palindromic substring  from the given string. No need of DP solution.
@str = "abcdefghijkayaklmadamnoonopqrstuvwxyz".gsub(' ', '').chars;
hash = { };
i = 0;
j = @str.count - 1;

# a potential palindrome where at least 1st and last equal
# recurse while each diminishing pairs also equal
# includes "excessive" comparing the odd middle char (code stink?)
def pal (i, j) 
    return true if j < i;
    pal(i + 1, j - 1) if @str[i].eql?(@str[j]);
end;

# 
while (i < j)
    while (i < j)
        hash[@str[i..j].join("")] = j - i + 1 if pal(i, j);
        j -= 1;
    end
	j = @str.count - 1;
	i += 1;
end;

print "'#{@str.join("")}' has following palindromic strings; #{hash}\n";
print "longest is #{hash.max_by{|k,v| v}.join(" length ")}";
