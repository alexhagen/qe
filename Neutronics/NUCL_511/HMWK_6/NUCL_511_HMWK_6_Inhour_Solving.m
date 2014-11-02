clear; close all; clc;

Lambda=4.41190E-7;
betak=[7.87173E-5 7.09826E-4 6.10649E-4 1.20866E-3 5.47426E-4 1.65755E-4];
lambdak=[1.29660E-2 3.12874E-2 1.34616E-1 3.44560E-1 1.38307E0 3.76334E0];

syms alpha;
rho=-3*sum(betak);
solve(alpha * Lambda + sum(betak*alpha./(alpha+lambdak))-rho)

alpha12=inhour(1.2*sum(betak),Lambda,betak,lambdak)
alpha08=inhour(0.8*sum(betak),Lambda,betak,lambdak)
alphaneg30=inhour(-3.0*sum(betak),Lambda,betak,lambdak)