#!/usr/bin/env ruby

# Hacker Rank - Warmup
# Birthday Cake Candles
# Author: Carlos L. Cuenca
# Date: 10/20/2020

### --------------------
### Function Definitions

def birthdayCakeCandles(candles)

    maximumHeight = -99999999
    heightCount   = 0

    candles.each do |height|

        if height > maximumHeight then

            maximumHeight = height
            heightCount = 0

        end

        if height == maximumHeight then heightCount += 1 end
        
    end

    return heightCount

end

### -------
### Program

ARGF.each do |line|

	array = line.split.map(&:to_i)

	puts birthdayCakeCandles array

end
