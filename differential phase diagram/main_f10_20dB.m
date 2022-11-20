clc,clear,close all
%test data1
load('Lorenz_6k_8047.mat')
x1=Lorenz_6k_8047(1:1000);
%test data2
% load('a1_x2_x3.mat')
% x1=a1_x2_x3;

x2=awgn(x1,20,'measured');
x3=awgn(x1,10,'measured');
x4=awgn(x1,0,'measured');
x5=awgn(x1,-10,'measured');

%原始信号时域图
h1 = figure('Name', 'waveform', 'NumberTitle', 'on');
set(h1,'position',[500,80,500,350]);	
subplot(411);plot(x2,'b');ylabel('20dB')
subplot(412);plot(x3,'b');ylabel('10dB')
subplot(413);plot(x4,'b');ylabel('0dB')
subplot(414);plot(x5,'b');ylabel('-10dB')
xlabel('Sampling points')
set(gca,'LooseInset',get(gca,'TightInset'));

%%
%Original phase diagram
h1 = figure('NumberTitle', 'on');
set(h1,'position',[80,540,278,244]);	
set(gca,'looseInset',[0 0 0 0]) 
[zn4,dn4]=PhaSpaRecon(x1,1,6);
plot(zn4(1,:),dn4,'b','linewidth',1);
% xlabel('s1(k)');ylabel('s1(k+τ)');
ax = gca; 
ax.XLabel.String = '\fontsize{10}S_{1}(\fontsize{10}\rm{k})';
ax.YLabel.String = '\fontsize{10}S_{1}(\fontsize{10}\rm{k+τ})';
set(gca,'LooseInset',get(gca,'TightInset'));
set(gca,'FontName','Times New Roman','FontSize',10)

h1 = figure('NumberTitle', 'on');
set(h1,'position',[360,540,278,244]);	
set(gca,'looseInset',[0 0 0 0]) 
[zn4,dn4]=PhaSpaRecon(x2,1,6);
plot(zn4(1,:),dn4,'b','linewidth',1);
% xlabel('s2(k)');ylabel('s2(k+τ)');
ax = gca; 
ax.XLabel.String = '\fontsize{10}S_{1}(\fontsize{10}\rm{k}) with SNR=20dB';
ax.YLabel.String = '\fontsize{10}S_{1}(\fontsize{10}\rm{k+τ})';
set(gca,'LooseInset',get(gca,'TightInset'));
set(gca,'FontName','Times New Roman','FontSize',10)

h1 = figure('NumberTitle', 'on');
set(h1,'position',[640,540,278,244]);	
set(gca,'looseInset',[0 0 0 0]) 
[zn4,dn4]=PhaSpaRecon(x3,1,6);
plot(zn4(1,:),dn4,'b','linewidth',1);
% xlabel('s3(k)');ylabel('s3(k+τ)');
ax = gca; 
ax.XLabel.String = '\fontsize{10}S_{1}(\fontsize{10}\rm{k}) with SNR=10dB';
% ax.YLabel.String = '\fontsize{10}S_{1}(\fontsize{10}\rm{k+τ})';
set(gca,'LooseInset',get(gca,'TightInset'));
set(gca,'FontName','Times New Roman','FontSize',10)

h1 = figure('NumberTitle', 'on');
set(h1,'position',[920,540,278,244]);	
set(gca,'looseInset',[0 0 0 0]) 
[zn4,dn4]=PhaSpaRecon(x4,1,6);
plot(zn4(1,:),dn4,'b','linewidth',1);
% xlabel('s4(k)');ylabel('s4(k+τ)');
ax = gca; 
ax.XLabel.String = '\fontsize{10}S_{1}(\fontsize{10}\rm{k}) with SNR=0dB';
% ax.YLabel.String = '\fontsize{10}S_{1}(\fontsize{10}\rm{k+τ})';
set(gca,'LooseInset',get(gca,'TightInset'));
set(gca,'FontName','Times New Roman','FontSize',10)

h1 = figure('NumberTitle', 'on');
set(h1,'position',[1200,540,278,244]);	
set(gca,'looseInset',[0 0 0 0]) 
[zn4,dn4]=PhaSpaRecon(x4,1,6);
plot(zn4(1,:),dn4,'b','linewidth',1);
% xlabel('s4(k)');ylabel('s4(k+τ)');
ax = gca; 
ax.XLabel.String = '\fontsize{10}S_{1}(\fontsize{10}\rm{k}) with SNR=-10dB';
% ax.YLabel.String = '\fontsize{10}S_{1}(\fontsize{10}\rm{k+τ})';
set(gca,'LooseInset',get(gca,'TightInset'));
set(gca,'FontName','Times New Roman','FontSize',10)