function [bfit Brl Bdr Bbdr] = bed(b,rxmax,rymax,bl,bb,window,door,bdoor)
bfit = 0;
bx = b(1);
by = b(2);
o = b(3);
t = 0;
Brl = 0;
Bdr = 0;
Bbdr = 0;

 [xmax ymax] = furniture(bx,by,o,bl,bb); %calculate xmax and ymax of furniture
 
 t = room(rxmax,rymax,bx,by,xmax,ymax);  %check that furniture is near the wall
 bfit = bfit + t;
 
 t = roomlimit(rxmax,rymax,xmax,ymax);    %check furniture is within room limit
 if (t == 10)
    bfit = bfit + t;
 elseif(t == 0)
     Brl = 1;    
 else
     Brl = 0;
 end
 
 if(((bx <= window(1)) && (window(1) <= xmax)) || ((bx <= window(3)) && (window(3) <= xmax)) || ((by <= window(2)) && (window(2) <= ymax)) || ((by <= window(4)) && (window(4) <= ymax)))
  bfit = bfit + 5;          
 else                                   %check window constraint
     bfit = bfit + 10;
 end
 
 if(((bx <= door(1)) && (door(1) <= xmax)) || ((bx <= door(3)) && (door(3) <= xmax)) || ((by <= door(2)) && (door(2) <= ymax)) || ((by <= door(4)) && (door(4) <= ymax)))
  bfit = bfit + 2;
 elseif(bfit == t)                                    % check room door constraint
     bfit = bfit + 10;
     Bdr = 0;
 else
     Bdr = 1;
 end
 
 if(((bx <= bdoor(1)) && (bdoor(1) <= xmax)) || ((bx <= bdoor(3)) && (bdoor(3) <= xmax)) || ((by <= bdoor(2)) && (bdoor(2) <= ymax)) || ((by <= bdoor(4)) && (bdoor(4) <= ymax)))
  bfit = bfit + 2;
 elseif( bfit == t)                                    %check bathroom door constraint
     bfit = bfit + 10;
     Bbdr = 0;
 else
 Bbdr = 1;
 end
 
end

