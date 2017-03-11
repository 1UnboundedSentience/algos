def move_tower(disk, a, b, c)
    if disk == 0
        a.delete(disk)
        b.unshift(disk)
        p "#{a} #{b} #{c}"
    else
        move_tower(disk - 1, a, c, b)
        a.delete(disk)
        b.unshift(disk)
        p "#{a} #{b} #{c}"
        move_tower(disk - 1, c, b, a)
    end
    return "#{a} #{b} #{c} is final positions"
end

p move_tower(6, [0,1,2,3,4,5,6], [], [])