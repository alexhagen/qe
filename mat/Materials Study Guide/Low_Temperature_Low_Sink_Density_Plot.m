clc; close all; clear;
t=linspace(0,20,1000);
x=[0,5,10,15,20];
Y=[0,5,5,8,8];
x2=[0,5,10,15,20];
Y2=[0,5,5,2,2];
plot(x,Y,'k-',x2,Y2,'k-');
xlabel('log|t|');ylabel('log|C|');
set(gca,'xtick',[5 10 15],'xticklabel',{'tau_1','tau_2','tau_3'},'ytick',[],'yticklabel',[]);
axis([0 20 0 9]);
set(gcf,'Position',[50 50 1000 450],'PaperPositionMode','auto');
set(gca,'Color','none');
plot2svg('Low_Temperature_Low_Sink_Density_Plot.svg');
clc; close all; clear;
t=linspace(0,20,1000);
x=[0,5,10,15];
Y=[0,5,8,8];
x2=[0,5,10,15];
Y2=[0,5,2,2];
plot(x,Y,'k-',x2,Y2,'k-');
xlabel('log|t|');ylabel('log|C|');
set(gca,'xtick',[5 10],'xticklabel',{'tau_1=tau_2','tau_3'},'ytick',[],'yticklabel',[]);
axis([0 15 0 9]);
set(gcf,'Position',[50 50 1000 450],'PaperPositionMode','auto');
set(gca,'Color','none');
plot2svg('Low_Temperature_Intermediate_Sink_Density_Plot.svg');