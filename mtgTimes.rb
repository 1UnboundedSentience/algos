def find_avail_times(mtgs_arr, avail_array)
  mtgs_arr.each do |mtg|
    avail_array.each do |avail_chunk|
      if mtg[0].to_i > avail_chunk[0].to_i
        if mtg[1].to_i < avail_chunk[1].to_i
          #split into two b/c mtg fits inside avail chunk
          puts "hi1"
        else
          #remove beginning part of avail_chunk up to mtg[0]
          puts "hi2"
        end
      end
      if mtg[1].to_i > avail_chunk[1].to_i
        if mtg[1].to_i < avail_chunk[1].to_i
         puts "hi3"
        else
          #remove end part of avail_chunk coming after mtg[1]
          puts "hi4"
        end
      end
    end
  end
end

p find_avail_times([["1000", "1130"], ["1600", "1840"]], ["0900", "2400"])