clear; close all; clc;
set(gcf,'Units','centimeters');
gamma=1.08;
nu235=0.01670/0.00651;
nu238=0.04400/0.01766;
nu239=0.00645/0.00225;
nudk235=[0.00058	0.00302	0.00288	0.00646	0.00265	0.00111];
nudk238=[0.0061	0.00496	0.00576	0.01695	0.0118	0.00454];
nudk239=[0.00023	0.00153	0.00115	0.00211	0.00110	0.00033];
f239=linspace(0,0.5,1000);
beta=1.08*((0.02-0.02*f239)*sum(nudk238)/nu238 + (0.98 - 0.98*f239)*sum(nudk235)/nu235 + f239*sum(nudk239)/nu239);

plot(f239,beta,'k-');

ylabel('Delayed Neutron Fraction ($\beta$) [ ]','interpreter','none');
xlabel('Amount of $ ^239 Pu$ ($f_{239}$) [ ]','interpreter','none');
 figwidth=18;
    figheight=8;
    set(gcf,'Position',[1 1 figwidth figheight],'PaperPositionMode','auto');
    plot2svg('NUCL_511_HWMK_5_PROB_2.svg');