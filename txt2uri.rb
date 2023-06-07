#!/usr/bin/env ruby -n
print($_.chomp.gsub(/[^;\/?:@&=+\$,a-zA-Z0-9\-_.!~*']/){|s|'%'+s.ord.to_s(16).upcase})
# Reference: https://datatracker.ietf.org/doc/html/rfc2396#appendix-A
# uric = reserved | alphanum | mark | escaped
# mark = "-" | "_" | "." | "!" | "~" | "*" | "'" | "(" | ")"
# reserved = ";" | "/" | "?" | ":" | "@" | "&" | "=" | "+" | "$" | ","
# character which is not included in reserved, alphanum nor mark shall be escaped.
# Note: "(" and ")" are excluded from "mark" since it may cause CSS parse error.
