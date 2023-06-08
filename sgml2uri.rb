#!/usr/bin/env ruby
######################################################################
# Escape character based on RFC2396
# and generate compact escaped string.
######################################################################
require "erb"
alphanum = %q[a-zA-Z0-9]
#mark = %q[\-_.!~*'()]
mark = %q[\-_.!~*']  # It will be safer to remove "(" and ")" to embed in CSS.
reserved = %q[;/?:@&=+$,]
char2escape = /[^#{reserved}#{alphanum}#{mark}]/
ans = ''
while gets
  print($_.chomp.gsub(char2escape){|c|ERB::Util.url_encode(c)})
end
# Reference: https://datatracker.ietf.org/doc/html/rfc2396#appendix-A
# uric = reserved | alphanum | mark | escaped
# mark = "-" | "_" | "." | "!" | "~" | "*" | "'" | "(" | ")"
# reserved = ";" | "/" | "?" | ":" | "@" | "&" | "=" | "+" | "$" | ","
# character which is not included in reserved, alphanum nor mark shall be escaped.
