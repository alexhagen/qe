clc; close all; clear;
T=linspace(0,8,1000);
Y=T.*exp(-T);
Y=Y/max(Y);
Y=Y(end:-1:1);
Y2=Y(250:end);
T2=T(1:numel(Y2));
plot(T,Y,'k-',T2,Y2,'k--');
xlabel('Temperature');ylabel('Swelling Function');
h=legend('$10^{-3}$ dpa/sec','$10^{-6}$ dpa/sec');
set(h,'interpreter','latex');
set(gca,'xtick',[0 2 4 6 8 10],'xticklabel',{'0','200','400','600','800','1000'});
axis([0 10 0 1.25]);
set(gcf,'Position',[50 50 1000 450],'PaperPositionMode','auto');
set(gca,'Color','none');
plot2svg('Dose_Rate_Shifting_Plot.svg');