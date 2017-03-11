
class Coin
  def initialize
    @solutions = {}
  end

  # def divide_coins(n, denoms=[25,10,5,1])
  #   p "Input is #{n}"
  #   if n == 0
  #     p "bottomed out"
  #     return 1
  #   else
  #     num_ways = 0
  #     #denoms = [25,10,5,1]
  #     p denoms
  #     denoms.each do |d|
  #       if d <= n
  #         p "recursing on #{n - d}"
  #         num_ways += divide_coins(n - d, without(n)) # if 1, don't do 5 or 10
  #       end
  #     end
  #     return num_ways
  #   end
  # end

  def divide_coins2(n, denoms=[25,10,5,1])
    denoms = denoms.sort.reverse
    p "Called with n=#{n} and denoms=#{denoms}"
    if denoms.length == 1
      p "returning 1"
      return 1
    end
    largest_coin = denoms.max
    remaining = n
    num_ways = 0
    smaller_denoms = denoms[1..-1] # [10, 5, 1]
    while remaining >= 0
      p "Remaining is #{remaining}"
      num_ways += self.divide_coins2(remaining, smaller_denoms)
      remaining -= largest_coin
    end
    return num_ways

  end

  def without(n, denoms)
    return denoms.delete_if {|eachthing| eachthing == n}
  end
end

zog = Coin.new()

#without(25, [25,10,5,1]) -> [10,5,1]

# 16 [10, 5, 1]
# 0 -> 16 [5, 1] -> (16 [1], 11 [1], 6 [1], 1 [1])
# 1 -> 6 [5, 1] -> (6 [1], 1 [1])

#p zog.without(25, [25,10,5,1])
#p zog.divide_coins2(4)
#p zog.divide_coins2(5)
#p zog.divide_coins2(6)
#p zog.divide_coins2(10) # 1 10, 2 5s, 1 five 5 ones, 10 ones
p zog.divide_coins2(16, [5, 10, 1]) #, 10,5,1    10,111111  5,5,5,1   5,5,11111,1  5,11111,11111,1      1111111111111111111
# take 0 quarters out -> divide_coins(n, [10, 5, 1])
# take 1 quarter out -> divide_coins(n - 25, [10, 5, 1])
# take 2 quarters out -> divide_coins(n - 25*2, [10, 5, 1])
# ...
# add up the results off all of the above

# 3 -> 1
# 3 -> [(1,1,1)]
# 6 -> [(5,1), (1,1,1,1,1,1)]
# p zog.divide_coins(4)
# p zog.divide_coins(5)
# p zog.divide_coins(6)
#p divide_coins(16)

  # var cents_remaining, var num_ways
  #BC n == 0
  #  return 1
  #RC more than one penny

  # if cents_remaining > 0 :
  # (of 25,10,5,1, the ones less than cents_remaning)

  #else
  # num_ways += 1 :