# Given a valid (IPv4) IP address, return a defanged version of that IP address.
#
# A defanged IP address replaces every period "." with "[.]".



# def defang_i_paddr(address)
#     address.split(".").join("[.]")
# end

def defang_i_paddr(address)
    address.gsub(".","[.]")
end

# Note: string search will be faster than regex
# Interesting link on gsub and split/join: https://stackoverflow.com/questions/29956508/why-is-stringsplit-n-and-arrayjoin-quicker-than-stringgsub-n/29956753#29956753

p defang_i_paddr("1.1.1.1")
# => "1[.]1[.]1[.]1"
p defang_i_paddr("255.100.50.0")
