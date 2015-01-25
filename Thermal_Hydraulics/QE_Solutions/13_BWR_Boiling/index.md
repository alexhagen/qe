---
layout: post-no-feature
date: 
title: 
---


Illustration
------------

Assumptions
-----------

1.  No Fast Fissions ($RR_{f}=\Sigma_{f}\phi_{T}$)

2.  Steady State ($\frac{\partial}{\partial t}=0$)

3.  No gravity ($\vec{g}=0$)

4.  No Viscous Forces ($\boldsymbol{\tau}=0$)

5.  Negligible pressure drop in coolant channel ($\nabla p=0$)

6.  Negligible axial conduction
    ($k\frac{\partial^{2}T}{\partial z^{2}}=0$)

Power Density
-------------

First, we must find the power density using the neutronics of the
reactor. We can find the flux in a cylindrical reactor by solving for
$\phi_{T}$ in

$$P=2\pi E_{R}\underbrace{\Sigma_{f}\int_{0}^{R}\int_{-\frac{H}{2}}^{\frac{H}{2}}\phi_{T}\left(\vec{r}\right)\vec{r}dzdr}_{\text{fission reaction rate}}$$

and the power density is related to this by

$$q^{'''}=E_{d}\Sigma_{f}\phi_{T}(\vec{r})$$

This, combined, gives us

$$q^{'''}=\frac{1.16P}{HR_{f}^{2}n}\frac{E_{d}}{E_{R}}\mathrm{J_{0}}\left(\frac{2.405r}{\tilde{R}}\right)\cos\left(\frac{\pi z}{\tilde{H}}\right)$$

and assuming that the extrapolation length is small compared to the
dimensions of the reactor, $\tilde{R}\approx R$ and
$\tilde{H}\approx H$.

So, in the hottest channel, we get

$$q^{'''}=q_{max}^{'''}\cos\left(\frac{\pi z}{H}\right)$$

Energy Equation
---------------

We start with the temperature equation

$$\rho c_{v}\left[\cancelto{0}{\frac{\partial T}{\partial t}}+\vec{v}\cdot\nabla T\right]=\cancelto{0}{k\nabla^{2}T}+\cancelto{0}{\rho\vec{g}\cdot\vec{v}}+q^{'''}-\cancelto{0}{p\nabla\cdot\vec{v}}-\cancelto{0}{\boldsymbol{\tau}:\nabla\vec{v}}$$

and so

$$\frac{\partial T}{\partial z}=\frac{q^{'''}}{\rho c_{v}v_{z}}=\frac{q_{max}^{'''}}{\rho c_{v}v_{z}}\cos\left(\frac{\pi z}{H}\right)$$

$$T_{b}=\frac{q_{max}^{'''}H}{\pi\rho c_{v}v_{z}}\sin\left(\frac{\pi z}{H}\right)+c_{1}\;\;\&\;\;\left.T_{b}\right\rfloor _{-\frac{H}{2}}=T_{b0}\;\;\therefore\;\;c_{1}=T_{b0}+\frac{q_{max}^{'''}H}{\pi\rho c_{v}v_{z}}$$

So in the channel,

$$T_{b}=T_{b0}+\frac{q_{max}^{'''}H}{\pi\rho c_{v}v_{z}}\left[1+\sin\left(\frac{\pi z}{H}\right)\right]$$

And follows this trend until $T_{b}\rightarrow T_{bsat}$, after which
$T_{b}=\begin{cases}
T_{bsat} & z\geq z_{bsat}\end{cases}$.

To determine the centerline pressure in the fluid, remember that

$$R=\begin{cases}
\frac{a}{2k_{f}A}+\frac{b}{k_{c}A}+\frac{1}{hA} & \text{cartesian}\\
\frac{1}{4\pi Hk_{f}}+\frac{ln(1-\nicefrac{a}{b})}{2\pi Hk_{c}}+\frac{1}{hA} & \text{cylindrical}
\end{cases}$$

Where we can find the heat must be continuous between each section

$$T_{m}-T_{b}=q\left[R\right]=q_{max}^{'''}V_{f}R\cos\left(\frac{\pi z}{H}\right)$$
