def roman_to_int(s)
    symbols = {
        "I" => 1, "V" => 5, "X" => 10,
        "L" => 50, "C" => 100, "D" => 500,
        "M" => 1000
    }
    result = 0

    (1...s.length).each do |i|
        if symbols[s[i-1]] < symbols[s[i]]
            result -= symbols[s[i-1]]
        else
           result += symbols[s[i-1]]
        end
    end

    result += symbols[s[-1]]
end

p roman_to_int("III")
p roman_to_int("IV")
p roman_to_int("LVIII")
p roman_to_int("MCMXCIV")
