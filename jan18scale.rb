class Scale
    def initialize

    end

    def weigh(left, right)
        return "left side heavier" if left.reduce(:+) > right.reduce(:+)
        return "right side heavier" if left.reduce(:+) < right.reduce(:+)
        return "equal weight"
    end
end

marblesA = [1,1,1,1] + [1,1,1,1] + [9]

marbles = [1,1,1,1] + [1,1,1,1] + [9,1,1,1]
marbles2 = [1,1,1,1] + [1,1,1,1] + [0,1,1,1]
scale1 = Scale.new
scale1.weigh(marblesA[0..(marblesA.length-1)/2], marbles2)