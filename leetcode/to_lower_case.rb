# https://stackoverflow.com/questions/5174913/combine-two-arrays-into-hash
# https://leetcode.com/problems/to-lower-case/

def to_lower_case(str)
    letter_map = Hash[('A'..'Z').zip('a'..'z')]
    str.chars.map{|c| letter_map[c] ? letter_map[c] : c}.join
end
