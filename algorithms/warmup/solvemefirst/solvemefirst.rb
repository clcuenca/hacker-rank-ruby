#!/usr/bin/env ruby

# Hacker Rank - Warmup
# Solve Me First
# Author: Carlos L. Cuenca
# Date: 10/19/20

### --------------------
### Function Definitions

def solveMeFirst (a, b)
  
    return a + b
  
end

### -------
### program

ARGF.each do |line|

	tests = line.split

	puts solveMeFirst(tests[0].to_i, tests[1].to_i)

end
