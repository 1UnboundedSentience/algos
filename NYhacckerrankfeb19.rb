
def sub_pali(str)
  count = 0
  midpt_idx = (str.length-1)/2
  substr_arr = get_substr(str[0..midpt_idx], str)
  #binding.pry
  substr_arr.each {|substr|
    rev = str[-substr.length..-1].reverse
    p "#{substr} #{rev}"
    count+=1 if substr == str[-substr.length..-1].reverse
  }
  if str[0...midpt_idx] == str[-midpt_idx..-1]
    p "#{str[0...midpt_idx]} #{str[-midpt_idx..-1]}"
    count +=1
  end
  return count
end

def get_substr(half, str, arr=[])
  0.upto(half.length-1) {|idx|
     0.upto(idx) { |n|
        arr << half[n..idx]
     }
  }

  return arr
end

p sub_pali("aabaa")
# p sub_pali("aca")
# p sub_pali("acbaa")

=begin
  algorithms
  output int is count of distrinct cont substr that are palis
  n^2 - substring are palis
  recursion, pass both next ltr and next group of ltrs
=end