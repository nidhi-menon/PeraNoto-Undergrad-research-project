function chrom(roomlen,roombr,roomdu,roomdf,roomdto,broomdu,broomdf,broomdto,wu,wf,wto)
roomlen=roomlen*12;
roombr=roombr*12;
wu=wu*12;
roomdu=roomdu*12;
broomdu=broomdu*12;
[wx1,wy1,wx2,wy2]=windowloc(roomlen,roombr,wu,wf,wto);
[rdx1,rdy1,rdx2,rdy2]=doorloc(roomlen,roombr,roomdu,roomdf,roomdto);
[bdx1,bdy1,bdx2,bdy2]=bdoorloc(roomlen,roombr,broomdu,broomdf,broomdto);
popsize=20000;
nogen=5;
chrome=ones([1,popsize],0);
gene=ones([1,popsize],0);
for x=1:popsize
    for n=1:3
        gtemp=[randi(roomlen,[1,2]),randi(2,[1,1])];
        chrome=[chrome,gtemp];
    end
end
finchrom= (reshape(chrome,[9,popsize]))'   
for i=1:popsize
    g=finchrom(i,:);                
    fitarr=fitnessvalue(g,roomlen,roombr,[wx1,wy1,wx2,wy2],[rdx1,rdy1,rdx2,rdy2],[bdx1,bdy1,bdx2,bdy2]);
    gene=[gene,fitarr];
end
fingen = (reshape(gene,[18,popsize]))' ;
asc=sortrows(fingen,10); 
con= asc(:,10)<100;
asc(con,:)=[];  
asc(asc(:,14)==1,:)=[];
asc(asc(:,15)==1,:)=[];
horsize=size(asc,1);
nextgen=ones([1,horsize],0);
if (rem(horsize,2)~=0)
    horsize=horsize+1;
    asc(horsize,:)=asc(1,:) ;
end
for z=1:nogen
   horsize=size(asc,1);
if (rem(horsize,2)~=0)
    horsize=horsize+1;
    asc(horsize,:)=asc(1,:);
end
for m=1:+2:size(asc)
    [child1,child2]=crossover(asc(m,:), asc(m+1,:));
    fitarr1=fitnessvalue(child1,roomlen,roombr,[wx1,wy1,wx2,wy2],[rdx1,rdy1,rdx2,rdy2],[bdx1,bdy1,bdx2,bdy2]);
    nextgen=[nextgen,fitarr1];
    fitarr1=fitnessvalue(child2,roomlen,roombr,[wx1,wy1,wx2,wy2],[rdx1,rdy1,rdx2,rdy2],[bdx1,bdy1,bdx2,bdy2]);
    nextgen=[nextgen,fitarr1];
end
temp1 = (reshape(nextgen,[18,(size(nextgen,2)/18)]))';
asc=sortrows(temp1,10);
end
tempvar=size(asc,1);
temp2=ones([1,36],0);
temp5=ones([1,18],0);
temp6=ones([1,27],0);
%mutation
%if(asc(size(asc,1),10)>178)
 %  asc(size(asc,1),:)=mutate(asc(size(asc,1),:)); 
%end 
if (tempvar==0)
    msgbox({'Please Submit Again!!!' })
elseif (tempvar==1)
    oneoutput(asc,roomlen,roombr,roomdu,roomdf,roomdto,broomdu,broomdf,broomdto,wu,wf,wto)
elseif (tempvar==2)
        
        for w=1:2
        temp5=[temp5 asc(w,1:9)];
        end
        temp3 = (reshape(temp5,[9,2]))';
        temp4=mat2cell(temp3,ones([1 2]));
        twooutput(temp4,roomlen,roombr,roomdu,roomdf,roomdto,broomdu,broomdf,broomdto,wu,wf,wto)      
elseif (tempvar==3)
        for w=1:3
        temp6=[temp6 asc(w,1:9)];
        end
        temp3 = (reshape(temp6,[9,3]))';
        temp4=mat2cell(temp3,ones([1 3]));
        threeoutput(temp4,roomlen,roombr,roomdu,roomdf,roomdto,broomdu,broomdf,broomdto,wu,wf,wto)      
else
        for w=tempvar-3:tempvar
         temp2=[temp2 asc(w,1:9)];
        end
        temp3 = (reshape(temp2,[9,4]))';
        temp4=mat2cell(temp3,ones([1 4]));
        tempout(temp4,roomlen,roombr,roomdu,roomdf,roomdto,broomdu,broomdf,broomdto,wu,wf,wto)
end


