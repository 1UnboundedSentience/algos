def maxSum(array)
  maxEndingHere = array[0]
  maxSoFar = array[0]
  array.each do |num|
    maxEndingHere = [*num, (maxEndingHere + num)].max
    maxSoFar = [*maxSoFar, maxEndingHere].max
  end
  return maxSoFar
end
p maxSum([6, -1, 3, 5, -55, 99, -55, -10])
p maxSum([-55])
=begin
so, we need to do in linear time, just add up.  Var "sum till now", dynamically adjust
by removing first or last elem to see if sum increases.  But how about 2 separate sum blocks?

rules for max cons sum - when u hit negative number, blocks to left and right may be great
dont have to know entire sum, just which blocks are greater.

=end

 # /**********************************************************************
 #  *                           Homework X                               *
 #  **********************************************************************/

 # /**********************************************************************
 #  *  Problem 1: Max Consecutive Sum                                    *
 #  *                                                                    *
 #  *  Prompt: Given an array of integers find the sum of consecutive    *
 #  *          values in the array that produces the maximum value.      *
 #  *                                                                    *
 #  *  Input:  Unsorted array of positive and negative integers          *
 #  *  Output: Integer (max consecutive sum)                             *
 #  *                                                                    *
 #  *  Time Complexity: O(n)                                             *
 #  *  Auxiliary Space Complexity: O(1)                                  *
 #  *                                                                    *
 #  *  Example: input = [6, -1, 3, 5, -10]                               *
 #  *           output = 13 (6 + -1 + 3 + 5 = 13)                        *
 #  *                                                                    *
 #  **********************************************************************/

 # /**********************************************************************
 #  *  Problem 2: Coin Change                                            *
 #  *                                                                    *
 #  *  Prompt: US Currency has coins in circulation with the             *
 #  *          following value in cents: [1, 5, 10, 25, 50, 100]         *
 #  *                                                                    *
 #  *          Given a value, find how many unique ways to make change   *
 #  *          given the coin values in circulation.                     *
 #  *                                                                    *
 #  *  Input:  An integer N (value from which to make change)            *
 #  *  Output: An integer (number of unique ways to make change)         *
 #  *                                                                    *
 #  *  Time Complexity: O(nm)                                            *
 #  *  Auxiliary Space Complexity: O(n)                                  *
 #  *                                                                    *
 #  *  Example: input = 11                                               *
 #  *           output = 4 ([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],           *
 #  *                       [5, 1, 1, 1, 1, 1, 1],                       *
 #  *                       [5, 5, 1],                                   *
 #  *                       [10, 1])                                     *
 #  *                                                                    *
 #  *  Hint: www.geeksforgeeks.org/dynamic-programming-set-7-coin-change *
 #  *                                                                    *
 #  **********************************************************************/

def coin_combos(total)
  coins = [1, 5, 10, 25, 50, 100]
  counter ||= 0
  if total == 0
    counter += 1
    p "#{counter} is counter"
    return
  elsif total > 0
    coins.reverse.each do |integer|
      if integer < total
        coin_combos(total - integer)
      end
    end
  end
end

p coin_combos(11)

def fib(n)
  cache ||= []
  #return cache[n] if cache[n]
  return 0 if n == 0
  return 1 if n == 1

end

def LP(value)
  cache = {}
  def traverse(x,y)
    key = x + ":" + y
    if (cache[key] != nil)
      return cache[key]
    elsif x == value && y == value
      return 1
    elsif x > v || y > v
      return 0
    end
  end
  cache[key] = traverse(x-1, y) + traverse(x, y-1)
  return traverse(0,0)
end

p LP(2)

=begin

rescue Exception => e
 tabulation - build up number of solutions in it
=end