clc,clear,close all
%test data1
load('Lorenz_6k_8047.mat')
x1=Lorenz_6k_8047(1:1000);
%test data2
% load('a1_x2_x3.mat')
% x1=a1_x2_x3;

x2=awgn(x1,40,'measured');
x3=awgn(x1,35,'measured');
x4=awgn(x1,30,'measured');

%%
%Perform differential operation on the sequence.
y11=diff(x1,1,2);%First-order column difference
y21=diff(x2,1,2);
y31=diff(x3,1,2);
y41=diff(x4,1,2);

y12=diff(x1,2,2);%Second order column difference
y22=diff(x2,2,2);
y32=diff(x3,2,2);
y42=diff(x4,2,2);

%%
%First-order difference phase diagram
h1 = figure('NumberTitle', 'on');
set(h1,'position',[100,300,278,244]);	
set(gca,'looseInset',[0 0 0 0]) 
[zn4,dn4]=PhaSpaRecon(y11,1,6);
plot(zn4(1,:),dn4,'b','linewidth',1);
% xlabel('D1s1(k)');ylabel('D1s1(k+而)');
ax = gca; 
ax.XLabel.String = '\fontsize{10}D_{1}S_{1}(\fontsize{10}\rm{k})';
ax.YLabel.String = '\fontsize{10}D_{1}S_{1}(\fontsize{10}\rm{k+而})';
set(gca,'LooseInset',get(gca,'TightInset'));
set(gca,'FontName','Times New Roman','FontSize',10)

h1 = figure('NumberTitle', 'on');
set(h1,'position',[400,300,278,244]);	
set(gca,'looseInset',[0 0 0 0]) 
[zn4,dn4]=PhaSpaRecon(y21,1,6);
plot(zn4(1,:),dn4,'b','linewidth',1);
% xlabel('D1s2(k)');ylabel('D1s2(k+而)');
ax = gca; 
ax.XLabel.String = '\fontsize{10}D_{1}S_{1}(\fontsize{10}\rm{k}) with SNR=40dB';
ax.YLabel.String = '\fontsize{10}D_{1}S_{1}(\fontsize{10}\rm{k+而})';
set(gca,'LooseInset',get(gca,'TightInset'));
set(gca,'FontName','Times New Roman','FontSize',10)

h1 = figure('NumberTitle', 'on');
set(h1,'position',[700,300,278,244]);	
set(gca,'looseInset',[0 0 0 0]) 
[zn4,dn4]=PhaSpaRecon(y31,1,6);
plot(zn4(1,:),dn4,'b','linewidth',1);
% xlabel('D1s3(k)');ylabel('D1s3(k+而)');
ax = gca; 
ax.XLabel.String = '\fontsize{10}D_{1}S_{1}(\fontsize{10}\rm{k}) with SNR=35dB';
% ax.YLabel.String = '\fontsize{10}D_{1}S_{1}(\fontsize{10}\rm{k+而})';
set(gca,'LooseInset',get(gca,'TightInset'));
set(gca,'FontName','Times New Roman','FontSize',10)

h1 = figure('NumberTitle', 'on');
set(h1,'position',[1000,300,278,244]);	
set(gca,'looseInset',[0 0 0 0]) 
[zn4,dn4]=PhaSpaRecon(y41,1,6);
plot(zn4(1,:),dn4,'b','linewidth',1);
% xlabel('D1s4(k)');ylabel('D1s4(k+而)');
ax = gca; 
ax.XLabel.String = '\fontsize{10}D_{1}S_{1}(\fontsize{10}\rm{k}) with SNR=30dB';
% ax.YLabel.String = '\fontsize{10}D_{1}S_{1}(\fontsize{10}\rm{k+而})';
set(gca,'LooseInset',get(gca,'TightInset'));
set(gca,'FontName','Times New Roman','FontSize',10)


%%
%Original phase diagram
h1 = figure('NumberTitle', 'on');
set(h1,'position',[100,540,278,244]);	
set(gca,'looseInset',[0 0 0 0]) 
[zn4,dn4]=PhaSpaRecon(x1,1,6);
plot(zn4(1,:),dn4,'b','linewidth',1);
% xlabel('s1(k)');ylabel('s1(k+而)');
ax = gca; 
ax.XLabel.String = '\fontsize{10}S_{1}(\fontsize{10}\rm{k})';
ax.YLabel.String = '\fontsize{10}S_{1}(\fontsize{10}\rm{k+而})';
set(gca,'LooseInset',get(gca,'TightInset'));
set(gca,'FontName','Times New Roman','FontSize',10)

h1 = figure('NumberTitle', 'on');
set(h1,'position',[400,540,278,244]);	
set(gca,'looseInset',[0 0 0 0]) 
[zn4,dn4]=PhaSpaRecon(x2,1,6);
plot(zn4(1,:),dn4,'b','linewidth',1);
% xlabel('s2(k)');ylabel('s2(k+而)');
ax = gca; 
ax.XLabel.String = '\fontsize{10}S_{1}(\fontsize{10}\rm{k}) with SNR=40dB';
ax.YLabel.String = '\fontsize{10}S_{1}(\fontsize{10}\rm{k+而})';
set(gca,'LooseInset',get(gca,'TightInset'));
set(gca,'FontName','Times New Roman','FontSize',10)

h1 = figure('NumberTitle', 'on');
set(h1,'position',[700,540,278,244]);	
set(gca,'looseInset',[0 0 0 0]) 
[zn4,dn4]=PhaSpaRecon(x3,1,6);
plot(zn4(1,:),dn4,'b','linewidth',1);
% xlabel('s3(k)');ylabel('s3(k+而)');
ax = gca; 
ax.XLabel.String = '\fontsize{10}S_{1}(\fontsize{10}\rm{k}) with SNR=35dB';
% ax.YLabel.String = '\fontsize{10}S_{1}(\fontsize{10}\rm{k+而})';
set(gca,'LooseInset',get(gca,'TightInset'));
set(gca,'FontName','Times New Roman','FontSize',10)

h1 = figure('NumberTitle', 'on');
set(h1,'position',[1000,540,278,244]);	
set(gca,'looseInset',[0 0 0 0]) 
[zn4,dn4]=PhaSpaRecon(x4,1,6);
plot(zn4(1,:),dn4,'b','linewidth',1);
% xlabel('s4(k)');ylabel('s4(k+而)');
ax = gca; 
ax.XLabel.String = '\fontsize{10}S_{1}(\fontsize{10}\rm{k}) with SNR=30dB';
% ax.YLabel.String = '\fontsize{10}S_{1}(\fontsize{10}\rm{k+而})';
set(gca,'LooseInset',get(gca,'TightInset'));
set(gca,'FontName','Times New Roman','FontSize',10)