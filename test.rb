# Copyright 2016 yagi1206

#!/usr/bin/ruby

ARGV.each do |a|
  puts "arguments is #{a}"
end

if ARGV.length > 1 then
  puts "Invalid ARGV number"
  exit
end

# Already confirmed that the number of command line argumensts is one
arg = ARGV[0]

if File.file?("#{arg}") then
  puts "File exist"
else
  puts "File does not exist"
  exit
end


contents = File.read("#{arg}")

print contents

