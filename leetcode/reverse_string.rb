def reverse_string(s)
  left = 0
  right = s.size - 1

  while (left < right)
    temp = s[left]
    s[left] = s[right]
    s[right] = temp
    left += 1
    right -= 1
  end
end
