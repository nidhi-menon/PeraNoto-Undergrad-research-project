function fitvalue = roomlimit(rxmax,rymax,fxmax,fymax)

%rl = length of room
%rb = breadth of room
%fx = starting x co-ord of furniture,
%fy = starting y co-ord of furniture,
%fl = length of furniture,
%fb = breadth of furniture,
%o  = orientation (1=horizontal, 2=vertical)

fitvalue=0;

    
    if(((fxmax)<=(rxmax)) && ((fymax)<=(rymax)))         %check x co-ord dimensions
        fitvalue = fitvalue+10;                          	     %max fitvalue=10
    else
        fitvalue = 0;                           	     %min fitvalue=1
    end	
    
end

