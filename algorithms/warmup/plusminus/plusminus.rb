#!/usr/bin/env ruby

# Hacker Rank - Warmup
# Plus Minus
# Author: Carlos L. Cuenca
# Date: 10/20/2020

### --------------------
### Function Definitions

def plusMinus(array)

    positive = 0
    negative = 0
    zero     = 0

    array.each do |number|

        if number > 0  then positive += 1 end
        if number < 0  then negative += 1 end
        if number == 0 then zero     += 1 end

    end

    puts (positive.to_f / array.length).round(6)
    puts (negative.to_f / array.length).round(6)
    puts (zero.to_f     / array.length).round(6)

end

### -------
### Program

ARGF.each do |line|

	array = line.split.map(&:to_i)

	puts plusMinus array

end
