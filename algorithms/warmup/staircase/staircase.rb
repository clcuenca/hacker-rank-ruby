#!/usr/bin/env ruby

# Hacker Rank - Warmup
# Staircase
# Author: Carlos L. Cuenca
# Date: 10/20/2020

### --------------------
### Function Definitions

def staircase(n)

    for index in 1..n
        
        printString = ""

        for jindex in 0..n - index - 1

            printString += ' '

        end

        for lindex in 0..index - 1

            printString += '#'

        end

        puts printString

    end

end

### -------
### Program


ARGF.each do |line|

	puts staircase line.to_i

end
