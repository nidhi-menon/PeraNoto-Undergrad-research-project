function oneoutput(temp4,roomlen,roombr,roomdu,roomdf,roomdto,broomdu,broomdf,broomdto,wu,wf,wto)
figure('units','normalized','outerposition',[0 0 1 1])

[wx1,wy1,wx2,wy2]=windowloc(roomlen,roombr,wu,wf,wto);
[rdx1,rdy1,rdx2,rdy2]=doorloc(roomlen,roombr,roomdu,roomdf,roomdto);
[bdx1,bdy1,bdx2,bdy2]=bdoorloc(roomlen,roombr,broomdu,broomdf,broomdto);

if(((roomdf==1) && (roomdto==2))||((roomdf==2) && (roomdto==1)))
    rdx1 = rdx1 - 36;
    rdx2 = rdx2 - 36;
elseif(((roomdf==3) && (roomdto==4))||((roomdf==4) && (roomdto==3)))
        rdx1 = rdx1 + 48;
        rdx2 = rdx2 + 48;
elseif(((roomdf==2) && (roomdto==3))||((roomdf==3) && (roomdto==2)))
        rdy1 = rdy1 + 48;
        rdy2 = rdy2 + 48;
elseif(((roomdf==1) && (roomdto==4))||((roomdf==4) && (roomdto==1)))
     rdy1 = rdy1 +7;
     rdy2 = rdy2 +7;
end 

if(((broomdf==1) && (broomdto==2))||((broomdf==2) && (broomdto==1)))
    bdx1 = bdx1 + 11;
    bdx2 = bdx2 + 11;
elseif(((broomdf==1) && (broomdto==4))||((broomdf==4) && (broomdto==1)))
     bdy1 = bdy1 +12;
     bdy2 = bdy2 +12;
end 
if(((wf==1) && (wto==2))||((wf==2) && (wto==1)))
    wx1 = wx1 + 11;
    wx2 = wx2 + 11;
elseif(((wf==1) && (wto==4))||((wf==4) && (wto==1)))
     wy1 = wy1 +12;
     wy2 = wy2 +12;
end 

roomlen=roomlen/12;
roombr=roombr/12;
rdx1=rdx1/12;
rdx2=rdx2/12;
rdy1=rdy1/12;
rdy2=rdy2/12;
wx1=wx1/12;
wx2=wx2/12;
wy1=wy1/12;
wy2=wy2/12;
bdx1=bdx1/12;
bdx2=bdx2/12;
bdy1=bdy1/12;
bdy2=bdy2/12;

outgen = temp4;

%extract individual values from the output gen a
bxa=outgen(1)/12;
bya=outgen(2)/12;
boa=outgen(3)/12;
wxa=outgen(4)/12;
wya=outgen(5)/12;
woa=outgen(6)/12;
txa=outgen(7)/12;
tya=outgen(8)/12;
toa=outgen(9)/12;

%draw according to the orientation
if(boa==1)
    rectangle('Position',[bxa bya 6 5],'FaceColor','c')
    xt1a=bxa+3; %to calculate the midpt for the label
    yt1a=bya+2.5;
else
    rectangle('Position',[bxa bya 5 6],'FaceColor','c')
    xt1a=bxa+2.5; %to calculate the midpt for the label
    yt1a=bya+3;
end
if(woa==1)
    rectangle('Position',[wxa wya 3 2],'FaceColor',[1 0 0.6])
    xt2a=wxa+1.5; %to calculate the midpt for the label
    yt2a=wya+1;
else
    rectangle('Position',[wxa wya 2 3],'FaceColor',[1 0 0.6])
    xt2a=wxa+1; %to calculate the midpt for the label
    yt2a=wya+1.5;
end
if(toa==1)
    rectangle('Position',[txa tya 3 2],'FaceColor',[0 0.4 0 ])
    xt3a=txa+1.5; %to calculate the midpt for the label
    yt3a=tya+1;
else
    rectangle('Position',[txa tya 2 3],'FaceColor',[0 0.4 0])
    xt3a=txa+1; %to calculate the midpt for the label
    yt3a=tya+1.5;
end
%axis is from 1 to room_dimension
axis([1 roomlen 1 roombr])
xta = [xt1a xt2a xt3a];
yta = [yt1a yt2a yt3a];
str = {'B','W','T'};
text(xta,yta,str,'FontSize',16,'FontWeight','bold')
%to edit: door window and position to be taken from user..
line([wx1 wx2],[wy1 wy2],'color','r','LineWidth',5);
line([bdx1 bdx2 ],[bdy1 bdy2],'color','b','LineWidth',5);
line([rdx1 rdx2],[rdy1 rdy2],'color','g','LineWidth',5);

legend('Window','BDoor','RDoor', [45 175 0.1 0.2])