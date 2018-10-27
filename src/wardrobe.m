function [wfit Wrl Wdr Wbdr Ww] = wardrobe(w,rxmax,rymax,l,br,window,door,bdoor)
wfit = 0;
wx = w(1);
wy = w(2);
o = w(3);
t = 0;
Wrl = 0;
Wdr = 0;
Wbdr = 0;
Ww = 0;

 [xmax ymax] = furniture(wx,wy,o,l,br); %calculate xmax and ymax of furniture
 
 t = room(rxmax,rymax,wx,wy,xmax,ymax);  %check that furniture is near the wall
 wfit =  t;
 
 t = roomlimit(rxmax,rymax,xmax,ymax);    %check furniture is within room limit
  if (t == 10)
    wfit = wfit + t;
  elseif(t == 0)
     Wrl = 1;   
  else
         Wrl = 0;
 end
 
 if(((wx <= window(1)) && (window(1) <= xmax)) || ((wx <= window(3)) && (window(3) <= xmax)) || ((wy <= window(2)) && (window(2) <= ymax)) || ((wy <= window(4)) && (window(4) <= ymax)))
  wfit = wfit + 2; 
 elseif(wfit == t)                                   %check window constraint
     wfit = wfit + 10;
     Ww = 0;
 else
     Ww = 1;
 end
 
 if(((wx <= door(1)) && (door(1) <= xmax)) || ((wx <= door(3)) && (door(3) <= xmax)) || ((wy <= door(2)) && (door(2) <= ymax)) || ((wy <= door(4)) && (door(4) <= ymax)))
  wfit = wfit + 2;
 elseif(wfit == t)                                    % check room door constraint
     wfit = wfit + 10;
     Wdr = 0;
 else
     Wdr = 1;
 end
 
 if(((wx <= bdoor(1)) && (bdoor(1) <= xmax)) || ((wx <= bdoor(3)) && (bdoor(3) <= xmax)) || ((wy <= bdoor(2)) && (bdoor(2) <= ymax)) || ((wy <= bdoor(4)) && (bdoor(4) <= ymax)))
  wfit = wfit + 2;
 elseif(wfit == t)                       %check bathroom door constraint
     wfit = wfit + 10;
     Wbdr = 0;
 else
     Wbdr = 1;
 end
 
end

