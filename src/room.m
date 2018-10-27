function roomvalue = room(rxmax,rymax,fxmin,fymin,fxmax,fymax)

rxmin = 1;
rymin = 1;
%rl    = length of room
%rb    = breadth of room
%fxmin = starting x co-ord of furniture,
%fymin = starting y co-ord of furniture,
%fl    = length of furniture,
%fb    = breadth of furniture,

roomvalue=0;
if((rymax-fymax)<=1 || (rxmax-fxmax)<=1 || ((rymin+1)<=fymin) || ((rxmin+1)<=fxmin))
    roomvalue=roomvalue+10;
else
    roomvalue=0;
end
    
end