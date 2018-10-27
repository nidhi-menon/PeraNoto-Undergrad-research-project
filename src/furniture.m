function [ xmax, ymax ] = furniture(xmin,ymin,a,l,b)
%xmax of furniture
%ymax  "  "
%xmin "  "
%ymin " "
%a is alignment " "
%l is length " "
%b is breadth " "

if(a==1)             %horizontal
    xmax = xmin + l;
    ymax = ymin + b;
end
if(a==2)             %vertical
    xmax = xmin + b;
    ymax = ymin + l;
end

end

