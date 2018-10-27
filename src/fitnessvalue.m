function arr = fitnessvalue(arr,rxmax,rymax,window,door,bdoor)

%rxmax=1+rl;
%rymax=1+rb; %rxmax and rymax should be calculated in the main function
bl = 60;
bb = 72;
l = 36;
br = 24;
b = arr(1:3);
t = arr(4:6);
w = arr(7:9);
o1=0;
o2=0;
o3=0;
o=0;

 [wfit Wrl Wdr Wbdr Ww] = wardrobe(w,rxmax,rymax,l,br,window,door,bdoor);
 [bfit Brl Bdr Bbdr] = bed(b,rxmax,rymax,bl,bb,window,door,bdoor);
 [tfit Trl Tdr Tbdr] = table(t,rxmax,rymax,l,br,window,door,bdoor);
 
 if ((Wrl == 1)||(Brl == 1)||(Trl == 1))
     rl = 1;
 else 
     rl = 0;
 end
 
 if ((Wdr == 1)||(Bdr == 1)||(Tdr == 1))
     dr = 1;
 else 
     dr = 0;
 end
 
 if ((Wbdr == 1)||(Bbdr == 1)||(Tbdr == 1))
     bdr = 1;
 else 
     bdr = 0;
 end
  
 temp = overlap(w,b,l,br,bl,bb);  %check if wardrobe and bed overlap
 if (temp == 10)
    wfit = wfit + temp;
 elseif(temp == 0)
     o1 = 1;   
 else
     o1 = 0;
 end
 
 temp = overlap(w,t,l,br,l,br);   %check if wardrobe and table overlap
 if (temp == 10)
    wfit = wfit + temp;   
 elseif(temp == 0)
     o2 = 1;    
 else
     o2 = 0;
 end
 
 temp = overlap(b,t,bl,bb,l,br);   %check id bed and table overlap
 if (temp == 10)
    wfit = bfit + temp;    
 elseif(temp == 0)
     o3 = 1; 
 else
     o3 = 0;
 end
 
 if((o1 == 1) || (o2 == 1) || (o3 == 1))
     o = 1;
 else 
     o = 0;
 end
 
 totalfit = wfit + bfit + tfit;  
 
 arr = [arr,totalfit,wfit,bfit,tfit,o,rl,dr,bdr,Ww];
end

