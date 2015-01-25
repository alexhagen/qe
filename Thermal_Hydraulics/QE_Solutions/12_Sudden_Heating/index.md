---
layout: post-no-feature
date: 
title: 
---


Illustration
------------

Assumptions
-----------

1.  Axial Symmetry ($\frac{\partial}{\partial\theta}=0$)

2.  Sufficiently small in radius ($\frac{\partial}{\partial r}=0$)

3.  Well insulated at boundaries (no dissipation)

4.  No heat generation in rod ($\dot{q}=0$)

5.  Stationary (no M.E. or C.E., $\vec{v}=0$)

6.  Irrotational (no R.M.E.)

Energy Equation
---------------

We start with the temperature equation

$$\rho c_{v}\left[\frac{\partial T}{\partial t}+\cancelto{0}{\vec{v}\cdot\nabla T}\right]=k\nabla^{2}T+\cancelto{0}{\dot{q}}-\cancelto{0}{p\nabla\cdot\vec{v}}-\cancelto{0}{\boldsymbol{\tau}:\nabla\vec{v}}$$

$$\frac{\partial T}{\partial t}=\frac{k}{\rho c_{v}}\nabla^{2}T\;\;\&\;\;\alpha\equiv\frac{k}{\rho c_{v}}$$

$$\frac{\partial T}{\partial t}=\alpha\nabla^{2}T=\alpha\frac{\partial^{2}T}{\partial t^{2}}$$

This is in the equation form of the heat equation, and can be solved
using similarity

First, we define a property that is equal to the change in the
temperature

$$\theta\equiv T-T_{\infty}$$

This changes the boundary conditions to be:

$$\theta=\begin{cases}
0 & t=0\\
\theta_{0} & t\geq0,\;x=0\\
0 & t\geq0,\;x=\infty
\end{cases}$$

And we can write the heat equation in terms of:

$$\frac{\partial\nicefrac{\theta}{\theta_{0}}}{\partial t}=\alpha\frac{\partial^{2}\nicefrac{\theta}{\theta_{0}}}{\partial x^{2}}$$

And we can express $\nicefrac{\theta}{\theta_{0}}$ in terms of a non
dimensional function including the three parameters ($t$, $x$, and
$\alpha$) in the original form. The $4$ is included to help with the
algebra.

$$\theta=\phi\left(\eta\right)\;\;\&\;\;\eta\equiv\frac{x}{\sqrt{4\alpha t}}$$

To express the equation in this form, we use the chain rule

$$\frac{\partial\nicefrac{\theta}{\theta_{0}}}{\partial t}=\frac{\partial\phi}{\partial t}=\frac{\partial\phi}{\partial\eta}\frac{\partial\eta}{\partial t}=\left(\phi^{'}\right)\left(-\frac{1}{2}\frac{x}{\sqrt{4\alpha t}}\frac{1}{t}\right)=-\frac{\eta}{2t}\phi^{'}$$

$$\frac{\partial\nicefrac{\theta}{\theta_{0}}}{\partial x}=\frac{\partial\phi}{\partial x}=\frac{\partial\phi}{\partial\eta}\frac{\partial\eta}{\partial x}=\left(\phi^{'}\right)\left(\frac{1}{\sqrt{4\alpha t}}\right)=\frac{\phi^{'}}{\sqrt{4\alpha t}}$$

$$\frac{\partial^{2}\nicefrac{\theta}{\theta_{0}}}{\partial x^{2}}=\frac{\partial}{\partial x}\left(\frac{\partial\phi}{\partial x}\right)=\frac{\partial}{\partial\eta}\left(\frac{\partial\phi}{\partial x}\right)\left(\frac{\partial\eta}{\partial x}\right)=\left(\frac{\phi^{''}}{\sqrt{4\alpha t}}\right)\left(\frac{1}{\sqrt{4\alpha t}}\right)=\frac{\phi^{''}}{4\alpha t}$$

Then we can place this in the form

$$-\frac{\eta}{2t}\phi^{'}=\alpha\frac{\phi^{''}}{4\alpha t}\;\;\therefore\;\;\phi^{''}-2\eta\phi^{'}=0$$

This can be integrated using the integrating factor

$$\phi^{'}=c_{1}\exp\left(-\eta^{2}\right)$$

$$\phi=c_{1}\int_{0}^{\eta}\exp\left(-\eta^{2}\right)d\eta+c_{2}$$

$$\nicefrac{\theta}{\theta_{0}}\left(0,x\right)=\phi\left(0\right)=0\;\;\therefore\;\;c_{2}=0$$

$$\nicefrac{\theta}{\theta_{0}}\left(t,\infty\right)=\phi\left(\infty\right)=1\;\;\therefore\;\;c_{1}=\int_{0}^{\infty}\exp\left(-\eta^{2}\right)d\eta=\frac{2}{\sqrt{\pi}}$$

$$\phi=\frac{2}{\sqrt{\pi}}\int_{0}^{\eta}\exp\left(-\eta^{2}\right)d\eta=\mathrm{erf}\left(\eta\right)$$

$$\theta=\theta_{0}\mathrm{erf}\left(\frac{x}{\sqrt{4\alpha t}}\right)$$

$$\frac{T-T_{\infty}}{T_{0}-T_{\infty}}=\mathrm{erf}\left(\frac{x}{\sqrt{4\alpha t}}\right)$$

Now we find the gradient

$$\frac{\partial T}{\partial x}=\frac{\partial\nicefrac{\theta}{\theta_{0}}}{\partial x}=\frac{\phi^{'}}{\sqrt{4\alpha t}}=\frac{2}{\sqrt{\pi}}\exp\left(-\eta^{2}\right)\frac{1}{\sqrt{4\alpha t}}=\left.\frac{\exp\left(-\eta^{2}\right)}{\sqrt{\pi\alpha t}}\right\rfloor _{x=0}=\frac{1}{\sqrt{\pi\alpha t}}$$

So the diffusion length is then

$$d_{t}=\sqrt{\pi\alpha t}$$
