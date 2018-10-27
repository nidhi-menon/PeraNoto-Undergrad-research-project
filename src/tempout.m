function tempout(temp4,roomlen,roombr,roomdu,roomdf,roomdto,broomdu,broomdf,broomdto,wu,wf,wto)
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
     wy1 = wy1 +13;
     wy2 = wy2 +13;
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


outgen =cell([4,9]);
outgen=temp4;
a=outgen{1};
b=outgen{2};
c=outgen{3};
d=outgen{4};

%extract individual values from the output gen a
bxa=a(1)/12;
bya=a(2)/12;
boa=a(3)/12;
wxa=a(4)/12;
wya=a(5)/12;
woa=a(6)/12;
txa=a(7)/12;
tya=a(8)/12;
toa=a(9)/12;
%extract individual values from the output gen b
bxb=b(1)/12;
byb=b(2)/12;
bob=b(3)/12;
wxb=b(4)/12;
wyb=b(5)/12;
wob=b(6)/12;
txb=b(7)/12;
tyb=b(8)/12;
tob=b(9)/12;
%extract individual values from the output gen c
bxc=c(1)/12;
byc=c(2)/12;
boc=c(3)/12;
wxc=c(4)/12;
wyc=c(5)/12;
woc=c(6)/12;
txc=c(7)/12;
tyc=c(8)/12;
toc=c(9)/12;
%extract individual values from the output gen d
bxd=d(1) /12;
byd=d(2) /12;
bod=d(3)/12 ;
wxd=d(4) /12;
wyd=d(5) /12;
wod=d(6) /12;
txd=d(7) /12;
tyd=d(8) /12;
tod=d(9) /12;


subplot(2,2,1)
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
    rectangle('Position',[txa tya 3 2],'FaceColor',[0 0.4 0])
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
h1=get(gca,'Children');


subplot(2,2,2)
%draw according to the orientation
if(bob==1)
    rectangle('Position',[bxb byb 6 5],'FaceColor','c')
    xt1b=bxb+3; %to calculate the midpt for the label
    yt1b=byb+2.5;
else
    rectangle('Position',[bxb byb 5 6],'FaceColor','c')
    xt1b=bxb+2.5; %to calculate the midpt for the label
    yt1b=byb+3;
end
if(wob==1)
    rectangle('Position',[wxb wyb 3 2],'FaceColor',[1 0 0.6])
    xt2b=wxb+1.5; %to calculate the midpt for the label
    yt2b=wyb+1;
else
    rectangle('Position',[wxb wyb 2 3],'FaceColor',[1 0 0.6])
    xt2b=wxb+1; %to calculate the midpt for the label
    yt2b=wyb+1.5;
end
if(tob==1)
    rectangle('Position',[txb tyb 3 2],'FaceColor',[0 0.4 0])
    xt3b=txb+1.5; %to calculate the midpt for the label
    yt3b=tyb+1;
else
    rectangle('Position',[txb tyb 2 3],'FaceColor',[0 0.4 0])
    xt3b=txb+1; %to calculate the midpt for the label
    yt3b=tyb+1.5;
end
%axis is from 1 to room_dimension
axis([1 roomlen 1 roombr])
xtb = [xt1b xt2b xt3b];
ytb = [yt1b yt2b yt3b];
str = {'B','W','T'};
text(xtb,ytb,str,'FontSize',16,'FontWeight','bold')
%to edit: door window and position to be taken from user..
line([wx1 wx2],[wy1 wy2],'color','r','LineWidth',5);
line([bdx1 bdx2 ],[bdy1 bdy2],'color','b','LineWidth',5);
line([rdx1 rdx2],[rdy1 rdy2],'color','g','LineWidth',5);
h2=get(gca,'Children');


subplot(2,2,3)
%draw according to the orientation
if(boc==1)
    rectangle('Position',[bxc byc 6 5],'FaceColor','c')
    xt1c=bxc+3; %to calculate the midpt for the label
    yt1c=byc+2.5;
else
    rectangle('Position',[bxc byc 5 6],'FaceColor','c')
    xt1c=bxc+2.5; %to calculate the midpt for the label
    yt1c=byc+3;
end
if(woc==1)
    rectangle('Position',[wxc wyc 3 2],'FaceColor',[1 0 0.6])
    xt2c=wxc+1.5; %to calculate the midpt for the label
    yt2c=wyc+1;
else
    rectangle('Position',[wxc wyc 2 3],'FaceColor',[1 0 0.6])
    xt2c=wxc+1; %to calculate the midpt for the label
    yt2c=wyc+1.5;
end
if(toc==1)
    rectangle('Position',[txc tyc 3 2],'FaceColor',[0 0.4 0])
    xt3c=txc+1.5 ;%to calculate the midpt for the label
    yt3c=tyc+1;
else
    rectangle('Position',[txc tyc 2 3],'FaceColor',[0 0.4 0])
    xt3c=txc+1; %to calculate the midpt for the label
    yt3c=tyc+1.5;
end
%axis is from 1 to room_dimension
axis([1 roomlen 1 roombr])
xtc = [xt1c xt2c xt3c];
ytc = [yt1c yt2c yt3c];
str = {'B','W','T'};
text(xtc,ytc,str,'FontSize',16,'FontWeight','bold')
%to edit: door window and position to be taken from user..
line([wx1 wx2],[wy1 wy2],'color','r','LineWidth',5);
line([bdx1 bdx2 ],[bdy1 bdy2],'color','b','LineWidth',5);
line([rdx1 rdx2],[rdy1 rdy2],'color','g','LineWidth',5);
h3=get(gca,'Children');

subplot(2,2,4)
%draw according to the orientation
if(bod==1)
    rectangle('Position',[bxd byd 6 5],'FaceColor','c')
    xt1d=bxd+3; %to calculate the midpt for the label
    yt1d=byd+2.5;
else
    rectangle('Position',[bxd byd 5 6],'FaceColor','c')
    xt1d=bxd+2.5; %to calculate the midpt for the label
    yt1d=byd+3;
end
if(wod==1)
    rectangle('Position',[wxd wyd 3 2],'FaceColor',[1 0 0.6])
    xt2d=wxd+1.5; %to calculate the midpt for the label
    yt2d=wyd+1;
else
    rectangle('Position',[wxd wyd 2 3],'FaceColor',[1 0 0.6])
    xt2d=wxd+1; %to calculate the midpt for the label
    yt2d=wyd+1.5;
end
if(tod==1)
    rectangle('Position',[txd tyd 3 2],'FaceColor',[0 0.4 0])
    xt3d=txd+1.5; %to calculate the midpt for the label
    yt3d=tyd+1;
else
    rectangle('Position',[txd tyd 2 3],'FaceColor',[0 0.4 0])
    xt3d=txd+1; %to calculate the midpt for the label
    yt3d=tyd+1.5;
end
%axis is from 1 to room_dimension
axis([1 roomlen 1 roombr])
xtd = [xt1d xt2d xt3d];
ytd = [yt1d yt2d yt3d];
str = {'B','W','T'};
text(xtd,ytd,str,'FontSize',16,'FontWeight','bold')

%to edit: door window and position to be taken from user..
line([wx1 wx2],[wy1 wy2],'color','r','LineWidth',5);
line([bdx1 bdx2 ],[bdy1 bdy2],'color','b','LineWidth',5);
line([rdx1 rdx2],[rdy1 rdy2],'color','g','LineWidth',5);
h4=get(gca,'Children');

h=[h3;h2;h4;h1];

legend(h,'RDoor','BDoor','Window', [45 175 0.1 0.2])

