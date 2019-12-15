#https://leetcode.com/problems/split-a-string-in-balanced-strings/

def balanced_string_split(s)
    count = 0
    current = 0
    s.each_char do |c|
        c == "R" ? current += 1 : current -= 1
        count += 1 if current == 0
    end
    count
end
