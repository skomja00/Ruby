# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  combos = [];
  @map[digits[0]].each do |l|
    digits[1..digits.length].each_char do |d|
      @map[d].each do |l2|
        combos << l + l2;
      end
    end
  end
  return combos;
end
@map = {"2" => ["a","b","c"],
        "3" => ["d","e","f"],
        "4" => ["h","i","k"],
        "5" => ["l","m","n"],
        "6" => ["o","p","q"],
        "7" => ["t","s","t"],
        "8" => ["u","v","w"],
        "9" => ["x","y","z"]};
answer = letter_combinations("23");
print "answer.lenght=#{answer.length}\n#{answer}\n"