#!/usr/bin/env ruby

# Hacker Rank - Warmup
# Simple Array Sum
# Author: Carlos L. Cuenca
# Date:  10/19/2020

### --------------------
### Function Definitions

def simpleArraySum(array)

	sum = 0

	for index in 0..array.length

		sum += array[index].to_i

	end

	return sum

end

### -------
### program

array = nil

ARGF.each do |line|

	array = line.split.map(&:to_i)

	puts simpleArraySum(array)

end


