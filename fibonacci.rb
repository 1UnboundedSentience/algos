require 'pry'
#def hanoi(disk, a, b, c, towers)
def hanoi(disk, a, b, c)
  p disk.to_s + " " + $towers.to_s
  if disk == 1
    #p "#{a} #{b} #{c} "
    #binding.pry
    c.unshift(a.shift)
    p disk.to_s + " " + $towers.to_s
    #p "#{a} #{b} #{c} "
  else
    hanoi(disk-1, a, c, b)
    #binding.pry
    #p "#{a} #{b} #{c} "
    c.unshift(a.shift)
    p disk.to_s + " " + $towers.to_s
    #p "#{a} #{b} #{c} "
    hanoi(disk-1, b, a, c)
  end
end


tower1 = [1,2,3,4]
tower2 = []
tower3 = []
$towers = [tower1, tower2, tower3]

hanoi(4, tower1, tower2, tower3)
p "" + $towers.to_s