---
layout: post-no-feature
<<<<<<< HEAD
date: 
title: 
=======
date: 1/10/14
title: Sudden Motion {Bird}
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

2.  Two Dimensional ($\frac{\partial}{\partial z}=0$)

3.  Quasi Fully Developed ($\frac{\partial v_{y}}{\partial y}=0$)

4.  Laminar ($\tau=-\mu\frac{\partial v_{y}}{\partial x}$)

5.  Incompressible ($\frac{D\rho}{Dt}=0$)

6.  Uniform Surface Pressure ($\left.p\right\rfloor _{y=0}=p_{\infty}$)

Continuity Equation
-------------------

$$\frac{\partial\rho}{\partial t}+\nabla\cdot\left(\rho\vec{v}\right)=0\;\;\therefore\;\;\cancelto{0}{\frac{\partial\rho}{\partial t}+\vec{v}\cdot\nabla p}+\rho\nabla\cdot\vec{v}=0$$

$$\frac{\partial v_{x}}{\partial x}+\cancelto{0}{\frac{\partial v_{y}}{\partial y}}=0\;\;\therefore\;\;\frac{\partial v_{x}}{\partial x}=0$$

$$v_{x}=c_{1}\;\;\&\;\;\left.v_{x}\right\rfloor _{0}=0\;\;\therefore\;\;v_{x}=0$$

Momentum Equation
-----------------

$$\frac{\partial\rho\vec{v}}{\partial t}+\nabla\cdot\left(\rho\vec{v}\vec{v}\right)=-\nabla p-\nabla\cdot\boldsymbol{\tau}+\rho\vec{g}$$

and applying to the x direction

$$\begin{gathered}
\rho\left(\frac{\partial v_{x}}{\partial t}+\cancelto{0}{v_{x}}\frac{\partial v_{y}}{\partial x}+v_{y}\cancelto{0}{\frac{\partial v_{y}}{\partial x}}+v_{x}\cancelto{0}{\frac{\partial v_{y}}{\partial x}}\right)\\
=-\cancelto{0}{\frac{\partial p}{\partial y}}+\cancelto{0}{\rho g_{y}}+\mu\left(\frac{\partial^{2}v_{y}}{\partial x^{2}}+\cancelto{0}{\frac{\partial^{2}v_{y}}{\partial y^{2}}}+\cancelto{0}{\frac{\partial^{2}v_{y}}{\partial z^{2}}}\right)\end{gathered}$$

so

$$\frac{\partial v_{y}}{\partial t}=\frac{\mu}{\rho}\frac{\partial^{2}v_{y}}{\partial x^{2}}\;\;\&\;\;\nu\equiv\frac{\mu}{\rho}$$

$$\frac{\partial v_{y}}{\partial t}=\nu\frac{\partial^{2}v_{y}}{\partial x^{2}}$$

Now use similarity solution to solve this instace of the heat equation
form.
>>>>>>> ec9dae5cc421b69d72fd8a2b331f1590db9c4064
