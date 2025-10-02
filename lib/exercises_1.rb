line1 = 'start address: 0xA0, func1 address: 0xC0'
line2 = 'end address: 0xFF, func2 address: 0xB0'

# Check whether the given strings contain 0xB0
puts line1.match?(/0xB0/)
puts line2.match?(/0xB0/)

# Check if the given input strings contain two irrespective of case 
puts line1.match?(/two/i)
puts line2.match?(/two/i)

