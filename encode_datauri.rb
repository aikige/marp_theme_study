#!/usr/bin/env ruby
######################################################################
# Escape character based on RFC2396
# and generate compact escaped string.
######################################################################
require "cgi"
char2escape = /[#"]/
while gets
  print($_.chomp.gsub(char2escape){|c|CGI.escape(c)})
end
puts('')
# Reference: https://fetch.spec.whatwg.org/#data-urls
