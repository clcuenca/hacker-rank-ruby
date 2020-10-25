#!/usr/bin/env ruby

# Hacker Rank - Algorithms - Dynamic Programming
# Coin Change
# Author: Carlos L. Cuenca
# Date: 10/24/2020

### --------------------
### Function Definitions

def getWays(n, coins)

	coins << 0

	coins.sort!

	matrix = Array.new()

	for index in 0..coins.length - 1

		matrix << Array.new(n + 1, 0)

	end

	for row in 0..matrix.length - 1

		 for column in 0..matrix[row].length - 1

		 	if column == 0 then matrix[row][column] = 1

		 	elsif row - 1 >= 0 then

		 		matrix[row][column] = matrix[row - 1][column]

		 		if column - coins[row] >= 0 then

		 			matrix[row][column] += matrix[row][column - coins[row]]

		 		end

		 	end

		 end

	end

	return matrix[coins.length - 1][n]

end

linesRead = 0
number = 0
coins = 0

### -------
### Program

ARGF.each do |line|

	if linesRead == 0 then 

		array = line.split.map(&:to_i)

		number = array[0]
		coins  = array[1]

		linesRead += 1

	elsif linesRead == 1 then

		array = line.split.map(&:to_i)

		puts getWays(number, array)

		linesRead = 0

	end

end