function fit = overlap(f1,f2,l1,b1,l2,b2)
f1x=f1(1);
f1y=f2(2);
o1=f2(3);
f2x=f2(1);
f2y=f2(2);
o2=f2(3);
[f1xmax f1ymax] = furniture(f1x,f1y,o1,l1,b1);
[f2xmax f2ymax] = furniture(f2x,f2y,o2,l2,b2);
fit=0;
    if((f1x > f2xmax)||(f1y > f2ymax)||(f2x > f1xmax)||(f2y > f1ymax)) %does not overlap        
        fit=fit+10;                          
    else
        fit= 0;                          
    end

end

