/flow/ && !control 
	{
		control = 1;
		x=$0;
		sub(/[^ ].*/, "", x);
		x=x" ";
		# print NR":", x, length(x);
		print;
		next;
	}
control
	{
		if (substr($0, 1, length(x))==x)
			print;
		else
			control = 0;
	} 

