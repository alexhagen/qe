clear; close all; clc;
set(gcf,'Units','centimeters');

Lambda=4.41190E-7;
betak=[7.87173E-5 7.09826E-4 6.10649E-4 1.20866E-3 5.47426E-4 1.65755E-4];
lambdak=[1.29660E-2 3.12874E-2 1.34616E-1 3.44560E-1 1.38307E0 3.76334E0];

alpha = linspace(-4.5,0.5,10000);
rho = zeros(size(alpha));
for i=1:numel(alpha)
        rho(i) = alpha(i) * Lambda + sum(betak*alpha(i)./(alpha(i)+lambdak));
end

h=plot(alpha,rho,'k-');
set(h,'LineWidth',1);
hold on;
h2=plot([-4.5 0.5],[0 0],'k--');
h2=plot([-4.5 0.5],1.2*sum(betak)*[1 1],'k--');
h3=plot([-4.5 0.5],0.8*sum(betak)*[1 1],'k--');
h4=plot([-4.5 0.5],-3*sum(betak)*[1 1],'k--');
set(h2,'LineWidth',2);
axis([-4.5 0.5, -0.02 0.02])

ylabel('Inverse Period ($\alpha$) [$s^{-1}$]','interpreter','none');
xlabel('Reactivity ($\rho$) [ ]','interpreter','none');
figwidth=18;
figheight=8;
set(gcf,'Position',[1 1 figwidth figheight],'PaperPositionMode','auto');
plot2svg('img/NUCL_511_HWMK_6_Inhour_Plot.svg');