R="🌈";B=1000;W=8
F=[[".clj",";","(println \"#{R}\")"],
[".cpp","//","std::cout<<\"#{R}\";"],
[".swift","//","print(\"#{R}\")"],
[".sql","--","SELECT '#{R}'"],
[".js","//","console.log(\"#{R}\");"],
[".sh","#","echo \"#{R}\"","#!/bin/bash\n"],
[".cs","//","Console.WriteLine(\"#{R}\");"],
[".go","//","func main(){fmt.Println(\"#{R}\")}\n","package main\nimport \"fmt\"\n"],
[".dart","//","print(\"#{R}\");"],
[".r","#","print(\"#{R}\")"],
[".lua","--","print(\"#{R}\")"],
[".metal","//","kernel void r(){}"],
[".asp","'","Response.Write(\"#{R}\")"]]
def g(c,o,h,t);p=c+" ";(h||"")+p+("r"*[t-(h||"").size-p.size-o.size-2,0].max)+"\n"+o+"\n";end
F.each_with_index{|(x,c,o,h),i|n="%02d#{x}"%i;File.write(n,g(c,o,h,B-i*W));puts "#{n}: #{File.size(n)}"}
puts R
