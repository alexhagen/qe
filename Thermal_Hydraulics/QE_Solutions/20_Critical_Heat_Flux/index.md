---
layout: post-no-feature
date: 1/21/15
title: Critical Heat Flux
author: Alex Hagen
---


$T_{LB}=T_{sat}+\left(T_{c}-T_{sat}\right)_{JL}-\frac{q^{''}}{h}$

Flow Boiling
============

Critical Heat Flux
==================

Correlations
------------

### Zuber

$$q_{CHF}^{''}=\left(\frac{\pi}{24}\right)h_{fg}\rho_{v}\left[\frac{\sigma g\left(\rho_{l}-\rho_{v}\right)}{\rho_{v}^{2}}\right]^{\nicefrac{1}{4}}$$

### Jens-Lottes

Use the Jens-Lottes in imperial units and only for Subcooled boiling

$$q_{CHF}^{''}=C\times10^{6}\left(\frac{G}{10^{6}}\right)^{m}\Delta T^{0.22}$$

### Hench-Levy Limit Lines

Use the Hench-Levy Limit lines for nucleat boiling, in $\mathrm{psi}$
and all properties evaluated at $1000\,\mathrm{psi}$.

$$q_{CHF}^{''}=\begin{cases}
1.0 & x_{e}\leq\left(x_{e}\right)_{1}\\
1.9-3.3x_{e}-0.7\tanh^{2}\left(\nicefrac{3G}{10^{6}}\right) & \left(x_{e}\right)_{1}<x_{e}<\left(x_{e}\right)_{2}\\
0.6-0.7x_{e}-0.09\tanh^{2}\left(\nicefrac{2G}{10^{6}}\right) & x_{e}\geq\left(x_{e}\right)_{2}
\end{cases}$$

$$\left(x_{e}\right)_{1}=0.273-0.212\tanh^{2}\left(\nicefrac{3G}{10^{6}}\right)$$

$$\left(x_{e}\right)_{2}=0.5-0.209\tanh^{2}\left(\nicefrac{3G}{10^{6}}\right)+0.0346\tanh^{2}\left(\nicefrac{2G}{10^{6}}\right)$$

$$q_{CHF}^{''}\left(p\right)=q_{CHF}^{''}\left(1000\,\mathrm{psi}\right)\left[1.1-0.1\left(\frac{p-600}{400}\right)^{1.25}\right]$$
