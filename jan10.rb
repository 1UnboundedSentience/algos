# pale ple -> true
# pales pale -> true
# pale bale -> true
# pale bake -> false
# asympotic speed up = O(n) to O(1), O N! to O N^2, etc.

#tak eaways:
# break into smal lpieces
# extract simitries
# exit early when conditions are met pattern

# def within_one(str1,str2)
#   if str1.length == str2.length
#     counter = 0
#     0.upto(str1.length-1) do |num|
#       if str1[num] != str2[num]
#         counter += 1
#       end
#       if counter == 2
#         return false
#       end
#     end
#     return true
#   elsif str1.length-1 == str2.length
#     return one_length_diff(str1, str2)
#   elsif str2.length-1 == str1.length
#     return one_length_diff(str2, str1)
#   end
#   return false
# end

# def one_length_diff(str1,str2)
#     counter = 0
#     0.upto(str1.length-1) do |num|
#       #p "#{str1}   vs    #{str2}  iterator is #{num}  num of repeats is #{counter}"
#       if str1[num] != str2[num]
#         str2.insert(num, str1[num]) # ple is now pale
#         counter += 1
#       end
#       if counter == 2
#         return false
#       end
#     end
#     return true
# end

# p within_one("pale", "ple") # ple is pale
# p within_one("pales", "pale")
# p within_one("pale", "bale")
# p within_one("pale", "bake")
# p within_one("paless", "bake")
# p within_one("pale", "ale")
# p within_one("pale", "pael")

# pale ple -> true
# pales pale -> true
# pale bale -> true
# pale bake -> false

# cache sorted versions of strings
# clint eastwood , old west action

# lintc -> cilnt
# ab -> ab
# ba -> ab
# clint -> cilnt

# ab ab cilnt cilnt
# {
#   ab -> [ab, ba]

#   cilnt -> [lintc, clint]
# }





def combine_anagrams(array)
  array2 = []
  sorted_words = []
  hash = {}
  array.each do |word|
      sorted_word = my_sort(word)
      if !hash[sorted_word]
        hash[sorted_word] = []
        hash[sorted_word] << word
      else
        hash[sorted_word] << word
      end
  end
  hash.each do |k,v|
    v.each do |orig_word|
      array2 << orig_word
    end
  end
  return array2
end

def my_sort(word)
  array = word.split('')
  array = array.sort {|a,b| a <=> b}
  return array.join('')
end

p combine_anagrams(['keydon', 'care', 'clinteastwood', 'lintc', 'donkey', 'ab', 'clint', 'ba', 'motherinlaw', 'race', 'baaaaa', 'acre', 'womanhitler', 'oldwestaction'])