

=begin

neighbors must get more pieces, mini

1) at least 1 piece to each ochild
2) higher score gets more pieces
3) minize total # of pieces

go through steps and optimize

I: array
O: min # of pieces given under the rules

pieces given array = 0

1) try to give candy according to score
2)
=end

def isitpossible(a, b, c, d)
    return "No" if a < c || b < d
    diff1 = c - a
    diff2 = d - b
    # modulus diff1 by b and diff2 by a
    p "#{a} #{b} #{c} #{d} #{diff1} #{diff2} "
    if diff1 % b == 0 && diff2 % a == 0
        return "Yes"
    end
    return "No"
end

p isitpossible(1,4,5,9)