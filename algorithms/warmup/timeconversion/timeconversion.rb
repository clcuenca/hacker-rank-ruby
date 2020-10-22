#!/usr/bin/env ruby

# Hacker Rank - Warmup
# Time Conversion
# Author: Carlos L. Cuenca
# Date: 10/20/20

### --------------------
### Function Definitions

def timeConversion(time)

    hours      = (time[0] + time[1]).to_i
    minutes    = (time[3] + time[4]).to_i
    seconds    = (time[6] + time[7]).to_i
    timePeriod = (time[8] + time[9])

    newTime = ""

    hours = hours % 12

    if timePeriod == "PM" then hours += 12 end

    if hours < 10 then newTime += ("0" + hours.to_s)
    else newTime += hours.to_s end

    newTime += ":"

    if minutes < 10 then newTime += ("0" + minutes.to_s)
    else newTime += minutes.to_s end

    newTime += ":"

    if seconds < 10 then newTime += ("0" + seconds.to_s)
    else newTime += seconds.to_s end

    return newTime

end


### -------
### Program

ARGF.each do |line|

	puts timeConversion line

end