#!/usr/bin/env ruby

# Hacker Rank - Warmup
# Diagonal Difference
# Author: Carlos L. Cuenca
# Date: 10/20/2020

### --------------------
### Function Definitions

def diagonalDifference(array)

	leftDiagonal = 0
	rightDiagonal = 0

	for index in 0..array.length - 1

		leftDiagonal += array[index][index]

	end

	for index in 0..array.length - 1

		rightDiagonal += array[array.length - index - 1][index]

	end

	return (leftDiagonal - rightDiagonal).abs

end

### -------
### Program

array = Array.new()
number = 0
ready = false

ARGF.each do |line|

	if number == 0 then 

		number = line.to_i

	elsif number > 0 then 

		array << line.rstrip.split.map(&:to_i) 

		number -= 1

		ready = number == 0

	end

	if ready then 

		puts diagonalDifference array

		ready = false

	end




end
