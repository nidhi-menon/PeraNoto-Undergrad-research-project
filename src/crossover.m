%here i have taken input as arrays from the gene function.. because i don't
%have the fitness function yet. 
function [child1,child2]=crossover(p1,p2)
    child1= [p1(1:3),p2(4:6),p1(7:9)];
    child2= [p2(1:3),p1(4:6),p2(7:9)];
end    