// https://leetcode.com/problems/reverse-string/submissions/

var reverseString = function(s) {
  for (let left = 0, right = s.length-1; left < right; left++, right--) {
      let temp = s[left]
      s[left] = s[right]
      s[right] = temp
  }
};


// 2-liner

// var reverseString = function(s) { 
//   for (let i = 0, j = s.length-1; i < j; i++, j--) {
//       [s[i], s[j]] = [s[j], s[i]]
//   }
// };
