
require 'pry'
def arrangements(n)
  count = 0
  nums = [*1..n].permutation.to_a
  nums.each do |perm_arr|
    p perm_arr
    perm_arr.each_with_index do |anum, idx|
      p "#{anum} % #{idx} == 0 ?"
      p "#{anum} % #{perm_arr[idx]} == 0 ?"
      if idx != 0 && anum % idx == 0
        count+=1
      elsif perm_arr[idx] != 0 && anum % perm_arr[idx] == 0
        count+=1
      end
    end
  end
  return count
end

p arrangements(2)


def buildSubsequences(s)

end
=begin

magic arrangements

1..n is a magic arrangement if

the element at n is is divisble by the index

the element at n



=end