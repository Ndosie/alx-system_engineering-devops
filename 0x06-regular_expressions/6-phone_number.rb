#!/usr/bin/env ruby

arg = ARGV[0]

puts arg.scan(/^\d{10,10}$/)
