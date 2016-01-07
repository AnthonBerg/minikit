#!/usr/bin/env ruby

count = {}

histogram = {}

["jessie", "sid", "stable", "testing", "unstable"].each do | strib |
  cmdline = "grep #{strib} /etc/apt/* 2>/dev/null | grep -v $# | wc -l"
  # puts cmdline
  result = `#{cmdline}`
  # puts result
  linecount = result.to_i()
  count[strib] = linecount
  histogram[linecount] ||= []
  histogram[linecount] << strib
end

# puts histogram

puts histogram[histogram.keys.sort[-1]]
