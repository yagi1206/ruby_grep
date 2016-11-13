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
contents.lines(";")  { | line1 | line1.lines("{") { | line2 | line2.lines("}") { | line3 | 
      p line3.gsub(/(\n)/,"")
}}}

#
#def multi_separator_lines( *args )
#  num = args.length
#  line[num]
  
