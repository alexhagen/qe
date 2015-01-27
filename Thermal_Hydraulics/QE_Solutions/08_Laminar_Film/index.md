---
layout: post-no-feature
<<<<<<< HEAD
date: 
title: 
=======
date: 1/10/14
title: Laminar Film {Munson, Bird}
>>>>>>> ec9dae5cc421b69d72fd8a2b331f1590db9c4064
author: Alex Hagen
---


<<<<<<< HEAD
=======
Illustration
------------

Assumptions
-----------

1.  Adiabatic Isothermal (no Energy Equation)

2.  Steady State ($\frac{\partial}{\partial t}=0$)

3.  Two Dimensional ($\frac{\partial}{\partial y}=0$)

4.  Fully Developed ($\frac{\partial v_{z}}{\partial z}=0$)

5.  Laminar ($\tau=-\mu\frac{\partial v_{z}}{\partial x}$)

6.  Incompressible ($\frac{D\rho}{Dt}=0$)

7.  No Slip ($\left.\vec{v}\right\rfloor _{\delta}=0$)

8.  Uniform Surface Pressure ($p=p\left(z\right)$)

Continuity Equation
-------------------

$$\frac{\partial\rho}{\partial t}+\nabla\cdot\left(\rho\vec{v}\right)=0\;\;\therefore\;\;\cancelto{0}{\frac{\partial\rho}{\partial t}+\vec{v}\cdot\nabla p}+\rho\nabla\cdot\vec{v}=0$$

$$\nabla\cdot\vec{v}=0$$
$$\frac{\partial v_{x}}{\partial x}+\cancelto{0}{\frac{\partial v_{z}}{\partial z}}=0\;\;\therefore\;\;v_{x}=c_{1}\;\;\&\;\;\left.v_{x}\right\rfloor _{\delta}=0\;\;\therefore\;\;v_{x}=0$$

Momentum Equation
-----------------

$$\frac{\partial\rho\vec{v}}{\partial t}+\nabla\cdot\left(\rho\vec{v}\vec{v}\right)=-\nabla p-\nabla\cdot\boldsymbol{\tau}+\rho\vec{g}$$

and applying to the x direction

$$\begin{gathered}
\rho\left(\cancelto{0}{\frac{\partial v_{x}}{\partial t}}+\cancelto{0}{v_{x}}\frac{\partial v_{x}}{\partial x}+v_{y}\cancelto{0}{\frac{\partial v_{x}}{\partial x}}+v_{x}\cancelto{0}{\frac{\partial v_{x}}{\partial x}}\right)\\
=-\frac{\partial p}{\partial x}+\rho g\sin\left(\theta\right)+\mu\left(\cancelto{0}{\frac{\partial^{2}v_{x}}{\partial x^{2}}}+\cancelto{0}{\frac{\partial^{2}v_{x}}{\partial y^{2}}}+\cancelto{0}{\frac{\partial^{2}v_{x}}{\partial z^{2}}}\right)\end{gathered}$$

$$\frac{\partial p}{\partial x}=\rho g\sin\left(\theta\right)$$ ’
$$p=\rho g\sin\left(\theta\right)x+c_{2}\;\;\&\;\;\left.p\right\rfloor _{0}=p_{\infty}\;\;\therefore\;\;c_{2}=p_{\infty}\;\;\&\;\;p=p\left(x\right)$$

now applying to the z direction.

$$\begin{gathered}
\rho\left(\cancelto{0}{\frac{\partial v_{z}}{\partial t}}+\cancelto{0}{v_{x}}\frac{\partial v_{z}}{\partial x}+v_{y}\cancelto{0}{\frac{\partial v_{z}}{\partial x}}+v_{x}\cancelto{0}{\frac{\partial v_{z}}{\partial x}}\right)\\
=-\cancelto{0}{\frac{\partial p}{\partial z}}+\rho g\cos\left(\theta\right)+\mu\left(\frac{\partial^{2}v_{z}}{\partial x^{2}}+\cancelto{0}{\frac{\partial^{2}v_{z}}{\partial y^{2}}}+\cancelto{0}{\frac{\partial^{2}v_{z}}{\partial z^{2}}}\right)\end{gathered}$$

$$\frac{\partial^{2}v_{z}}{\partial x^{2}}=-\frac{\rho g\cos\left(\theta\right)}{\mu}$$

$$\frac{\partial v_{z}}{\partial x}=-\frac{\rho g\cos\left(\theta\right)x}{\mu}+c_{3}\;\;\&\;\;\left.\frac{\partial v_{z}}{\partial x}\right\rfloor _{0}=0\;\;\therefore\;\;c_{3}=0$$

$$v_{z}=-\frac{\rho g\cos\left(\theta\right)}{2\mu}x^{2}+c_{4}\;\;\&\;\;\left.v_{z}\right\rfloor _{\delta}=0\;\;\therefore\;\;c_{4}=\frac{\rho g\cos\left(\theta\right)\delta^{2}}{2\mu}$$

$$v_{z}=\frac{\rho g\cos\left(\theta\right)\delta^{2}}{2\mu}\left[1-\left(\frac{x}{\delta}\right)^{2}\right]$$

$$\left\langle v_{z}\right\rangle =\frac{1}{\delta}\int_{0}^{\delta}\left\langle v_{z}\right\rangle dx$$

$$\left\langle v_{z}\right\rangle =\frac{\rho g\cos\left(\theta\right)\delta}{2\mu}\left[x-\frac{x^{3}}{3\delta^{2}}\right]_{0}^{\delta}=\frac{\rho g\cos\left(\theta\right)\delta}{2\mu}\left[\frac{2}{3}\delta\right]=\frac{\rho g\cos\left(\theta\right)\delta^{2}}{3\mu}$$
>>>>>>> ec9dae5cc421b69d72fd8a2b331f1590db9c4064
