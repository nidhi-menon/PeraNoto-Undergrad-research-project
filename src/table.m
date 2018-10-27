function [tfit Trl Tdr Tbdr] = table(t,rxmax,rymax,l,br,window,door,bdoor)
tfit = 0;
tx = t(1);
ty = t(2);
o = t(3);
t = 0;
Trl = 0;
Tdr = 0;
Tbdr = 0;

 [xmax ymax] = furniture(tx,ty,o,l,br); %calculate xmax and ymax of furniture
 
 t = room(rxmax,rymax,tx,ty,xmax,ymax);  %check that furniture is near the wall
 tfit = tfit + t;
 
 t = roomlimit(rxmax,rymax,xmax,ymax);    %check furniture is within room limit
if (t == 10)
    tfit = tfit + t;
elseif(t==0)
     Trl = 1;
else
    Trl = 0;
 end
 
 if(((tx <= window(1)) && (window(1) <= xmax)) || ((tx <= window(3)) && (window(3) <= xmax)) || ((ty <= window(2)) && (window(2) <= ymax)) || ((ty <= window(4)) && (window(4) <= ymax)))
  tfit = tfit + 7;          
 else                                   %check window constraint
     tfit = tfit + 10;
 end
 
 if(((tx <= door(1)) && (door(1) <= xmax)) || ((tx <= door(3)) && (door(3) <= xmax)) || ((ty <= door(2)) && (door(2) <= ymax)) || ((ty <= door(4)) && (door(4) <= ymax)))
  tfit = tfit + 2;
 elseif(tfit == t)                                    % check room door constraint
     tfit = tfit + 10;
     Tdr = 0;
 else
     Tdr = 1;
 end
 
 if(((tx <= bdoor(1)) && (bdoor(1) <= xmax)) || ((tx <= bdoor(3)) && (bdoor(3) <= xmax)) || ((ty <= bdoor(2)) && (bdoor(2) <= ymax)) || ((ty <= bdoor(4)) && (bdoor(4) <= ymax)))
  tfit = tfit + 2;
 elseif(tfit == t)                                    %check bathroom door constraint
     tfit = tfit + 10;
     Tbdr = 0;
 else
     Tbdr = 1;
 end
 
end

