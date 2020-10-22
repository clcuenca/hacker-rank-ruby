#!/usr/bin/env ruby

# Hacker Rank - Warmup
# Compare Triplets
# Author: Carlos L. Cuenca
# Date: 10/19/2020

### --------------------
### Function Definitions

def compareTriplets(alice, bob)

	aliceCount = 0
	bobCount   = 0

	for index in 0..3

		if alice[index].to_i > bob[index].to_i then aliceCount += 1 end
		if alice[index].to_i == bob[index].to_i then end
		if alice[index].to_i < bob[index].to_i then bobCount += 1 end

	end

	return [aliceCount, bobCount]

end

### -------
### Program

linesRead = 0
line = nil
alice = nil
bob = nil

ARGF.each do |line|

	line = line.split.map(&:to_i)

	if linesRead == 0 then alice = line end
	if linesRead == 1 then 
		
		bob   = line 
	
		linesRead = 0

		returnArray = compareTriplets alice, bob

	    puts returnArray


	end

	linesRead += 1;

end