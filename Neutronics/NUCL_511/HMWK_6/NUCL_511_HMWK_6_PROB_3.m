clear; close all; clc;
set(gcf,'Units','centimeters');


betak=[7.87173E-5 7.09826E-4 6.10649E-4 1.20866E-3 5.47426E-4 1.65755E-4];
lambdak=[0.0134 0.0322 0.1202 0.3133 0.8794 2.8530];


subplot(3,1,1);

Lambda=1E-4;
alpha = linspace(-0.1,0.1,5000);
rho = zeros(size(alpha));
for i=1:numel(alpha)
        rho(i) = alpha(i)*Lambda + sum(betak*alpha(i)./(alpha(i)+lambdak));
end

h=plot(alpha,rho,'k-');
set(h,'LineWidth',1);
for i=1:numel(alpha)
        rho(i) = alpha(i)*Lambda + sum(betak*alpha(i)./(lambdak));
end
hold on;
h5=plot(alpha,rho,'k:');


axis([-0.1 0.1, -0.02 0.02])
l=legend('Six Delay Group','Approximation');
set(l,'interpreter','none','Location','NorthWest');
title('$\Lambda=1\times 10^{-4}$','interpreter','none');

h2=plot([-0.1 0.1],[0 0],'k--');
set(h2,'LineWidth',2);

ylabel('Inverse Period ($\alpha$) [$s^{-1}$]','interpreter','none');
xlabel('Reactivity ($\rho$) [ ]','interpreter','none');

%% x
subplot(3,1,2);
Lambda=1E-5;
alpha = linspace(-0.1,0.1,5000);
rho = zeros(size(alpha));
for i=1:numel(alpha)
        rho(i) = alpha(i)*Lambda + sum(betak*alpha(i)./(alpha(i)+lambdak));
end

h=plot(alpha,rho,'k-');
set(h,'LineWidth',1);
for i=1:numel(alpha)
        rho(i) = alpha(i)*Lambda + sum(betak*alpha(i)./(lambdak));
end
hold on;
h5=plot(alpha,rho,'k:');


axis([-0.1 0.1, -0.02 0.02])
l=legend('Six Delay Group','Approximation');
set(l,'interpreter','none','Location','NorthWest');

h2=plot([-0.1 0.1],[0 0],'k--');
set(h2,'LineWidth',2);
title('$\Lambda=1\times 10^{-5}$','interpreter','none');

ylabel('Inverse Period ($\alpha$) [$s^{-1}$]','interpreter','none');
xlabel('Reactivity ($\rho$) [ ]','interpreter','none');

%%
subplot(3,1,3);
Lambda=4E-7;
alpha = linspace(-0.1,0.1,5000);
rho = zeros(size(alpha));
for i=1:numel(alpha)
        rho(i) = alpha(i)*Lambda + sum(betak*alpha(i)./(alpha(i)+lambdak));
end

h=plot(alpha,rho,'k-');
set(h,'LineWidth',1);
for i=1:numel(alpha)
        rho(i) = alpha(i)*Lambda + sum(betak*alpha(i)./(lambdak));
end
hold on;
h5=plot(alpha,rho,'k:');


axis([-0.1 0.1, -0.02 0.02])
l=legend('Six Delay Group','Approximation');
set(l,'interpreter','none','Location','NorthWest');
title('$\Lambda=4\times 10^{-7}$','interpreter','none');

h2=plot([-0.1 0.1],[0 0],'k--');
set(h2,'LineWidth',2);

ylabel('Inverse Period ($\alpha$) [$s^{-1}$]','interpreter','none');
xlabel('Reactivity ($\rho$) [ ]','interpreter','none');

figwidth=18;
figheight=8*3;
set(gcf,'Position',[1 1 figwidth figheight],'PaperPositionMode','auto');
plot2svg('img/NUCL_511_HWMK_6_PROB_3.svg');