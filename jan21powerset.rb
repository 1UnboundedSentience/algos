# require 'pry'
$answer = [""]

# # def powerset(str, cur, others)
# #   p "#{str}    #{cur}  #{others} #{$answer}"
# #   if str.length == 0
# #     return
# #   else
# #     others = find_others(str,ltr,idx)
# #     others.split('').each_with_index do |ltr, idx|
# #       cur += ltr
# #       $answer << cur
# #       powerset(str, cur, others)
# #       #str = find_others(str,ltr,idx)
# #     end
# #     return $answer
# #   end
# # end

def powerset(str, cur)
  # p "#{str}    #{cur}   #{$answer}"
    if str.length == 0
      return
    else
      str.split('').each_with_index do |ltr, idx|
        $answer << cur + ltr
        some_str = str[idx+1..-1]
        powerset(some_str, cur+ltr)
        #cur += ltr
      end
    end
    return $answer
end


# #p find_others("hello", "e", 1)

# p powerset("abc", "")

# $answer = [""]


# def powerset(str, cur)
#     # p str
#   # p "#{str}    #{cur}   #{$answer}"
#     if str.length == 0
#       return
#     else
#       str.split('').each_with_index do |ltr, idx|
#         $answer << cur + ltr
#         some_str = str[idx+1..-1]
#         powerset(some_str, cur + ltr)
#       end
#     end
#   return $answer

# end


#p find_others("hello", "e", 1)

p powerset("abc", "")