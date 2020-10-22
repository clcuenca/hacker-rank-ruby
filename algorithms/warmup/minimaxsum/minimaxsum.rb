#!/usr/bin/env ruby

# Hacker Rank - Warmup
# Mini Max Sum
# Author: Carlos L. Cuenca
# Date: 10/20/2020

### --------------------
### Function Definitions

def miniMaxSum(array)

    minimumSum = 9999999999
    maximumSum = -9999999999

    choose = 4

    combinations = Array.new(choose + 2)

    for j in 0..choose - 1

        combinations[j] = j

    end

    combinations[choose] = array.length
    combinations[choose + 1] = 0

    j = 0

    while j < choose do

        sum = 0

        for index in 0..choose - 1
            
            sum += array[combinations[index]]

        end

        if sum < minimumSum then minimumSum = sum end
        if sum > maximumSum then maximumSum = sum end

        # Find j
        j = 0

        while combinations[j] + 1 == combinations[j + 1] do

            combinations[j] = j

            j += 1

        end

        combinations[j] += 1

    end

    printString = minimumSum.to_s + " " + maximumSum.to_s

    puts printString

end

### -------
### Program

ARGF.each do |line|

	array = line.split.map(&:to_i)

	puts miniMaxSum array

end

