#!/usr/bin/env ruby

# Hacker Rank - Warmup
# A Very Big Sum
# Author: Carlos L. Cuenca
# Date: 10/19/2020

### --------------------
### Function Definitions

def aVeryBigSum(array)

	sum = 0

	array.each do |number|

		sum += number

	end

	return sum

end

### -------
### Program

ARGF.each do |line|

	array = line.split.map(&:to_i)

	puts aVeryBigSum array

end