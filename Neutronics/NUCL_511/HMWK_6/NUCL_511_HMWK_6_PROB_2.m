clear; close all; clc;
set(gcf,'Units','centimeters');

Lambda=4.41190E-7;
betak=[7.87173E-5 7.09826E-4 6.10649E-4 1.20866E-3 5.47426E-4 1.65755E-4];
lambdak=[0.0134 0.0322 0.1202 0.3133 0.8794 2.8530];

alpha = linspace(-4.5,0.5,10000);
rho = zeros(size(alpha));
lambdabar=mean(lambdak);
beta=sum(betak);
for i=1:numel(alpha)
        rho(i) = alpha(i)*Lambda + sum(beta*alpha(i)./(alpha(i)+lambdabar));
end

h=plot(alpha,rho,'k-');
set(h,'LineWidth',1);
for i=1:numel(alpha)
        rho(i) = alpha(i)*Lambda + sum(betak*alpha(i)./(alpha(i)+lambdak));
end
hold on;
h5=plot(alpha,rho,'k:');


axis([-4.5 0.5, -0.02 0.02])
l=legend('One Delay Group','Prompt and Stable');
set(l,'interpreter','none','Location','NorthWest');

h2=plot([-4.5 0.5],[0 0],'k--');
set(h2,'LineWidth',2);

ylabel('Inverse Period ($\alpha$) [$s^{-1}$]','interpreter','none');
xlabel('Reactivity ($\rho$) [ ]','interpreter','none');
figwidth=18;
figheight=8;
set(gcf,'Position',[1 1 figwidth figheight],'PaperPositionMode','auto');
plot2svg('img/NUCL_511_HWMK_6_PROB_2.svg');