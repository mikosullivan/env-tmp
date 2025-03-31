# VERSION: 1.0
# DATE: 2025-03-30
# DESCRIPTION: This module provides a temporary environment for the current process.


def ENV.tmp()
	hold = ENV.to_h
	
	begin
		yield
	ensure
		ENV.clear

		hold.each do |key, value|
			ENV[key] = value
		end
	end
end