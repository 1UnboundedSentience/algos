
=begin
Write a method to compute all permutations of a string.

apple

[a ,   p    p   l   e]



ae ap al


aep ael

aepl

aeplp


def find_permutations(substring, possible_perms=[])
  if substring.length == string.length
    possible_perms.push(substring)
  else
    characters = substring.split('')
  end
  #recursive call
  return possible_perms
end



def find_perms(string)
  # for every char in string
  # take it out and put it at the front,
  # then find all permutations of the remaining characters
#<assigned characters> <unassigned characters>
find_permutations("al", "ppe")
  some_perms = []
  foo = find_permutations("p", "pe")
  for x in foo
    some_perms.push("al" + x)
  end
  return some_perms

#first_letter, remaining
def without(string, index)
  # returns `string`, with the character at `index` removed
end


"abc"
"a" ("bc") -> "a" ["bc", "cb"] -> ["abc", "acb"]
"b" ("ac")
"c" ("ab")

"abcd"
"a" ("bcd)"
"b" ("acd")
"c" ("abd")
"d" ("abc")

"b" -> ["b"]
"c" -> ["c"]

=end

def without(string, index)
  return string[1..-1] if index == 0
  return string[0..-2] if index == string.length-1
  return string[0..(index-1)] + string[(index+1)..-1]
end

#p without("abc", 0)
require 'set'

def find_permutations(substring)
  master_list = Set.new
  if substring.length == 1
    return [substring]
  else
    #take one ltr out, append to each perm of remaining
    chars = substring.split('')
    chars.each_with_index do |ltr, idx|
      others = without(substring, idx)
      subperms = find_permutations(others)
      p subperms
      subperms.each do |subperm|
        maybe_perm = ltr + subperm
        master_list.add(maybe_perm)
      end
    end
  end
  return master_list
end

p find_permutations("abc")
p find_permutations("abc").count