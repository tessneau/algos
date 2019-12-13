# https://leetcode.com/problems/jewels-and-stones/


def num_jewels_in_stones(j, s)
    count = 0
    s.each_char {|stone| count += 1 if j.include?(stone) }
    count
end
# complexity of O(n logn) because include is log n

#same speed, seems like better complexity although strange when we pass in more than one character to j

def num_jewels_in_stones(j, s)
  s.count(j)
end

# hash method, O(m+n)

# def num_jewels_in_stones(j, s)
#     my_jewels = Hash.new
#     num_jewels = 0
#     j.each_char do |el|
#         my_jewels[el] = 0
#     end
#     s.each_char do |el|
#        if my_jewels[el]
#            num_jewels += 1
#        end
#     end
#     return num_jewels
# end

p num_jewels_in_stones("aA", "aAAbbbb")
p num_jewels_in_stones("z", "ZZ")
