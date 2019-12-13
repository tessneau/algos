// Given a roman numeral, convert it to an integer. Input is guaranteed to be within the range from 1 to 3999.


const symbols = {
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000
}

// input is a string, output should be an integer
// there is an order to the string values ***
// make an 0bject out of symbols
// define a total value to return (int)

// loop through the string
// --- if the current symbol is smaller than the one after it, subtract by symbol's value (ex: IX)
// --- else add by the symbol's value
// end loop

const romanToInt = s => {
    let value = 0;
    for (let i = 0; i < s.length; i++) {
     symbols[s[i]] < symbols[s[i+1]] ? value -= symbols[s[i]] : value += symbols[s[i]]
    }
    return value
};

console.log(romanToInt("III"))
// => 3
console.log(romanToInt("IV"))
// => 4
console.log(romanToInt("LVIII"))
// => 58
console.log(romanToInt("MCMXCIV"))
// => 1994
