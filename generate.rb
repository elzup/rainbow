R="🌈";B=100;W=2
F=[["r.rb","#","puts \"#{R}\""],
["o.swift","//","print(\"#{R}\")"],
["y.js","//","console.log(\"#{R}\");"],
["g.sh","#","echo \"#{R}\"","#!/bin/bash\n"],
["b.go","//","func main(){fmt.Println(\"#{R}\")}\n","package main\nimport \"fmt\"\n"],
["i.lua","--","print(\"#{R}\")"],
["v.aspx","'","Response.Write(\"#{R}\")"]]
def g(c,o,h,t);p=c+" ";(h||"")+p+("r"*[t-(h||"").bytesize-p.bytesize-o.bytesize-2,0].max)+"\n"+o+"\n";end
F.each_with_index{|(n,c,o,h),i|File.write(n,g(c,o,h,B-i*W));puts "#{n}: #{File.size(n)}"}
puts R
