class Array
     def mysplice(st, del, item)
         del_until = st+del
         st.upto(del_until) { |i|
          puts i
          self.delete(i) }
         self.insert(st, item)
     end
end
a = [1,2,3,4,5]
#p a.instance_methods
p a
a.mysplice(2,7,10)
p a