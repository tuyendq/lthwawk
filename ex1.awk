# match line contain 'flow' keyword, count number of spaces at the begin of the line and add one more space
# f variable: used to control execution of code block 1 or code block 2
/flow/ && !f {f=1;x=$0;sub(/[^ ].*/,"",x);x=x" ";print;next;} f {if (substr($0,1,length(x))==x)print; else f=0;}
