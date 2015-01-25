---
layout: post-no-feature
date: 1/19/15
title: Bernoulli’s Equation
author: Alex Hagen
---


Assumptions
-----------

1.  Steady State ($\frac{\partial}{\partial t}=0$)

2.  One Dimensional ($\nabla=\frac{\partial}{\partial z}$)

3.  No Viscous Loss ($\boldsymbol{\tau}=0$)

Kinetic Energy Equation
-----------------------

$$\rho\cancelto{0}{\frac{\partial\frac{v^{2}}{2}}{\partial t}}+\rho\nabla\cdot\left(v\frac{v^{2}}{2}\right)=-v\cdot\nabla p-\cancelto{0}{v\cdot\nabla\cdot\boldsymbol{\tau}}+\rho v\cdot g$$

Converting to one dimensional, asserting that the force $\vec{g}$ acts
downward (negative), and removing cancelled terms

$$\rho v_{z}\frac{\partial\frac{v_{z}^{2}}{2}}{\partial z}=-v_{z}\frac{\partial p}{\partial z}-\rho v_{z}g$$

dividing by $v_{z}$ and integrating

$$\rho\frac{v_{z}^{2}}{2}=-p-\rho gz$$

applying $\gamma\equiv\rho g$ and dividing by $\gamma$

$$\frac{v_{z}^{2}}{2g}+\frac{p}{\gamma}+z=\text{constant}$$

which gives us the bernoulli’s equation, including loss:

$$\frac{p_{1}}{\gamma_{1}}+\frac{v_{1}^{2}}{2g}+z_{1}=\frac{p_{2}}{\gamma_{2}}+\frac{v_{2}^{2}}{2g}+z_{2}+\underbrace{\left(\frac{fl}{D}+k\right)\frac{v_{2}^{2}}{2g}}_{\substack{\text{major and minor}\\
\text{losses}
}
}$$

which can be used, in conjunction with $h_{1}=h-h_{2}+l$ to determine
hydrostatic pressure and manometer pressures with

$$p_{1}+\gamma z_{1}-\gamma_{m}z_{2}=p_{2}\;\;\therefore\;\;\Delta p=-\gamma\left(z_{2}+z_{1}\right)+\gamma_{m}h$$
