=begin
  1. do 3, 5, 7 conditions
  2. two things conditions
  3. single thing conidtion

I: array of 15 booleans
O: new boolean array: at each index x, look at x-1 and and and x + 1 - perform boolean algebra on them

iterate through the array
access the values of x+1 and x-1 if they exist.  Thus
=end

def fizzbuzzpop(n)
  output = []
  for count in [*1..n]
    p count
    if count % 3 == 0 && count % 5 == 0 && count % 7 == 0
        output << "FizzBuzzPop"
    elsif count % 5 == 0 && count % 7 == 0
        output << "BuzzPop"
    elsif count % 3 == 0 && count % 7 == 0
        output << "FizzPop"
    elsif count % 3 == 0 && count % 5 == 0
        output << "FizzBuzz"
    elsif count % 7 == 0
        output << "Pop"
    elsif count % 5 == 0
        output << "Buzz"
    elsif count % 3 == 0
        output << "Fizz"
    else
        output << count
    end
  end
  output
end

#p fizzbuzzpop(105)


def automata(booleans)
  index = 0
  rules = {
    ['', '', ''] => '',
    ['', '', 't'] => 't',
    ['', 't', ''] => '',
    ['', 't', 't'] => 't',
    ['t', '', ''] => 't',
    ['t', '', 't'] => '',
    ['t', 't', ''] => 't',
    ['t', 't', 't'] => ''
  } # rules for automata game
  output = []
  while index < booleans.length
    triplet = []
    if booleans[index-1]
      triplet << booleans[index-1]
    else
      triplet << ''
    end

    triplet << booleans[index]

    if booleans[index+1]
      triplet << booleans[index+1]
    else
      triplet << ''
    end
    #p triplet
    #p index
    #p rules[triplet]
    output << rules[triplet]
    index += 1
  end
  output
end

run1 = automata(['', '', '', '',
                  '', '', '', '',
                  't', '', '', '',
                  '', '', '', ''
                ])

p run1

run2 = automata(run1)

p run2

run3 = automata(run2)

p run3
