---
layout: post-no-feature
date: 1/14/15
title: Fuel Plate {Todreas, Lamarsh}
author: Alex Hagen
---


Illustration
------------

Assumptions
-----------

1.  Steady State ($\frac{\partial}{\partial t}=0$)

2.  Constant Properties ($k_{\_}$, $h$ are constants)

3.  sufficiently large in $y$ and $z$ directions
    ($\frac{\partial}{\partial y}=\frac{\partial}{\partial z}=0$)

4.  Uniform heat generation in fuel ($q^{'''}$ is constant)

5.  Symmetry about centerline
    ($\left.\frac{\partial}{\partial x}\right\rfloor _{0}=0$)

Energy Equation
---------------

We start with Poisson’s heat equation in cartesian 1d

$$\frac{\partial}{\partial x}k\frac{\partial T}{\partial x}+q^{'''}=0$$

$$k\frac{\partial T}{\partial x}+q^{'''}x=c_{1}\;\;\&\;\;\left.\frac{\partial T}{\partial x}\right\rfloor _{0}=0\;\;\therefore\;\;c_{1}=0$$

$$T=-\frac{q^{'''}}{2k_{f}}x^{2}+c_{2}\;\;\&\;\;\left.T\right\rfloor _{0}=T_{m}\;\;\therefore\;\;c_{2}=T_{m}$$

$$T_{m}-T=\frac{q^{'''}}{2k_{f}}x^{2}$$

$$q_{f}^{''}=-k_{f}\frac{\partial T}{\partial x}=q^{'''}x$$

$$T_{m}-T_{s}=\frac{q^{'''}}{2k_{f}}a^{2}=q_{f}^{''}a\underbrace{\left[\frac{a}{2k_{f}}\right]}_{\substack{R_{f}}
}$$

Now we go into the cladding

$$\frac{\partial}{\partial x}k_{c}\frac{\partial T}{\partial x}+\cancelto{0}{q^{'''}}=0$$

$$k_{c}\frac{\partial T}{\partial x}=c_{1}\;\;\text{this is important because it shows that \ensuremath{q_{c}^{''}=-k_{c}\frac{\partial T}{\partial x}} is constant}$$

$$\left.q_{f}^{''}\right\rfloor _{a}=\left.q_{c}^{''}\right\rfloor _{f}\;\;\therefore\;\;q^{'''}a=-k_{c}\left(\frac{c_{1}}{k_{c}}\right)\;\;\therefore\;\;c_{1}=-q^{'''}a$$

$$T=-\frac{q^{'''}a}{k_{c}}x+c_{2}\;\;\&\;\;\left.T\right\rfloor _{a}=T_{s}\;\;\therefore\;\;c_{2}=T_{s}+\frac{q^{'''}a^{2}}{k_{c}}$$

$$T_{s}-T=\frac{q^{'''}a}{k_{c}}\left(x-a\right)$$

and to find this in terms of resistance

$$T_{m}-T_{c}=\frac{q^{'''}}{2k_{f}}a^{2}+\frac{q^{'''}a}{k_{c}}\left(a+b-a\right)=q^{'''}a\left[\underbrace{\frac{a}{2k_{f}}}_{R_{f}}+\underbrace{\frac{b}{k_{c}}}_{R_{c}}\right]$$

Now to find the heat transfer in the fuel, we compare fourier’s law for
heat transfer through the coolant with newton’s law of cooling for heat
transfer by convection to the coolant

$$h\left(T-T_{b}\right)=-k_{b}\frac{\partial T}{\partial x}\;\;\therefore\;\;\frac{\partial T}{\partial x}=-\frac{h}{k_{b}}\left(T-T_{b}\right)$$

$$T=c_{3}\exp\left(-\frac{h}{k_{b}}x\right)+T_{b}\;\;\&\;\;\left.T\right\rfloor _{a+b}=T_{c}\;\;\therefore\;\;c_{3}=\frac{\left(T_{c}-T_{b}\right)}{\exp\left(-\frac{h}{k_{b}}\left(a+b\right)\right)}$$

$$T-T_{b}=\left(T_{c}-T_{b}\right)\exp\left(-\frac{h}{k_{b}}\left(x-a-b\right)\right)$$

$$q_{b}^{''}=h\left(T-T_{b}\right)=h\left(\left(T_{c}-T_{b}\right)\exp\left(-\frac{h}{k_{b}}\left(x-a-b\right)\right)\right)$$

$$T-T_{b}=\frac{q_{b}^{''}}{h}$$

so now to put the whole system in terms of resistance

$$T_{m}-T_{b}=q^{'''}a\left[\underbrace{\underbrace{\frac{a}{2k_{f}}}_{R_{f}}+\underbrace{\frac{b}{k_{c}}}_{R_{c}}+\underbrace{\frac{1}{h}}_{R_{b}}}_{R}\right]$$
