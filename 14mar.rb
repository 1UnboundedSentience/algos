require 'pry'

def getInversedNumber(n)
  binary = n.to_s(2)
  0.upto(binary.length-1) {|idx|
      p binary[idx]
      binding.pry
        if binary[idx] == "0"
            binary[idx] == "1"
        else #lsif binary[idx] = "1"
            binary[idx] == "0"
        end
  }
  p binary
  binary.to_i(2)
end
 p getInversedNumber(13)