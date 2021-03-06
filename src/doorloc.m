function [x1,y1,x2,y2] = doorloc(rxmax,rymax,m,p1,p2)

%p1 = starting corner
%p2 = ending corner
%x1 = starting x coordinate of window
%y1 = starting y coordinate of window
%x2 = ending x coordinate of the window
%y2 = ending y coordinate of the window
%m= distance of the starting coordinate of the window from the nearest corner of the room
rxmin = 1;
rymin = 1;
var = 0;
dr = 36;

if((p1 == 1)&&(p2 == 2))	% 1--->2
	x1 = rxmin + 48;
    x2 = rxmin + 48;
    y1 = rymin + m;
    y2 = y1 + dr; 
    
elseif((p1 == 2) && (p2 == 1))	% 2--->1
	x1 = rxmin + 48;
	x2 = rxmin + 48;
    var = rymax - m;
	y1 = rymin + var;
	y2 = y1 - dr;

elseif((p1 == 4) && (p2 == 3))	%4--->3
	x1 = rxmax - 48;
	x2 = rxmax - 48;
	y1 = rymin + m;
    y2 = y1 + dr; 

elseif((p1 == 3) && (p2 == 4))	%3--->4
	x1 = rxmax - 48;
	x2 = rxmax - 48;
	var = rymax - m;
	y1 = rymin + var;
	y2 = y1 - dr;
	
elseif((p1 == 2) && (p2 == 3))	%2--->3
	x1 = rxmin + m;
	x2 = x1 + dr;
	y1 = rymax - 48;
	y2 = rymax - 48;
	
elseif((p1 == 3) && (p2 == 2))	%3--->2
    var = rxmax - m;
	x1 = rxmin + var;
	x2 = x1 - dr;
	y1 = rymax - 48;
	y2 = rymax - 48;
	
elseif((p1 == 1) && (p2 == 4))	%1--->4
	x1 = rxmin + m;
	x2 = x1 + dr;
	y1 = rymin + 48;
	y2 = rymin + 48;
	
else                            %4--->1
	var = rxmax - m;
	x1 = rxmin + var;
	x2 = x1 - dr;
	y1 = rymin + 48;
	y2 = rymin + 48;
end

end

