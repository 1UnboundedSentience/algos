def max_contig(array, k)
  max_len = 0
  sliding_window = []
  window_start = 0
  potential_len = 0
  array.each_index do |idx|
    p "#{idx}  #{sliding_window[0]}---#{sliding_window[-1]}"
    potential_len += 1
    if array[idx] == 0
      sliding_window << idx
      k -= 1
      #k is out of bounds when it is < 0
      if k < 0
        potential_len = idx - sliding_window[window_start] #includes all 1s up to previous window
        window_start += 1
      end
    end
    max_len = potential_len if potential_len > max_len
  end
  return max_len
end

p max_contig([1,0,1,1,0,1,1,1,0,1,1,1,1,0,1,1,1,1,1], 3)  #ans is 17

def max_contig2(k)


end