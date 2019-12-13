# https://stackoverflow.com/questions/47953598/rubys-digits-method-performance

def subtract_product_and_sum(n)
   digits = n.to_s.chars.map(&:to_i)
   sum = digits.sum
   product = digits.reduce(&:*)
   product-sum
end

#one-liner // but digits is slower
# def subtract_product_and_sum(n)
#    n.digits.reduce(&:*) - n.digits.sum
# end
