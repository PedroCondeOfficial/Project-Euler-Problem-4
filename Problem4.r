#
#
#							* Problem 4 *
# Find the largest palindrome made from the product of two 3-digit numbers
#
#

# Sets the minimum and maximum
min = 100 * 100
max = 999 * 999

x = min

# Creates a series of numbers between the minimum and maximum
series <- c(min:max)
greatest = 1

# Checks all numbers in the vector
for(n in series){
	# Turns the number to a string
    y = toString(n)

	# Reverses the string
    r = paste(rev(substring(y,1:nchar(y),1:nchar(y))),collapse = "")

	# Checks if the number is the same as the reversed number
    if(r == y){
	  # Determines the greatest number
      if(n > greatest){
        greatest <- n
      }
    }
  
}

# Prints the greatest number
print(greatest)
