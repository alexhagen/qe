---
layout: post-no-feature
<<<<<<< HEAD
date: 
title: 
=======
date: 1/6/15
title: Pipe Flow {Munson, Bird}
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

3.  Axial Symmetric ($\frac{\partial}{\partial\theta}=0$)

4.  Fully Developed ($\frac{\partial v_{z}}{\partial z}=0$)

5.  Laminar ($\tau=-\mu\frac{\partial v_{z}}{\partial x}$)

6.  Incompressible ($\frac{D\rho}{Dt}=0$)

7.  No Slip ($\left.\vec{v}\right\rfloor _{R}=0$)

8.  Axial pressure ($p=p\left(z\right)$)

Continuity Equation
-------------------

$$\frac{\partial\rho}{\partial t}+\nabla\cdot\left(\rho\vec{v}\right)=0\;\;\therefore\;\;\cancelto{0}{\frac{\partial\rho}{\partial t}+\vec{v}\cdot\nabla p}+\rho\nabla\cdot\vec{v}=0$$

$$\nabla\cdot\vec{v}=0$$

applying the cylindrical coordinates

$$\nabla\cdot\vec{v}=\frac{1}{r}\frac{\partial}{\partial r}\left(rv_{r}\right)=0\;\;\therefore\;\;v_{r}=c_{1}\;\;\&\;\;\left.v_{r}\right\rfloor _{R}=0\;\;\therefore\;\;v_{r}=0$$

Momentum Equation
-----------------

$$\frac{\partial\rho\vec{v}}{\partial t}+\nabla\cdot\left(\rho\vec{v}\vec{v}\right)=-\nabla p-\nabla\cdot\boldsymbol{\tau}+\rho\vec{g}$$

and applying cylindrical coordinates

$$\begin{gathered}
\rho\left(\cancelto{t}{\frac{\partial v_{z}}{\partial t}}+\cancelto{0}{v_{r}}\frac{\partial v_{z}}{\partial r}+\frac{v_{\theta}}{r}\cancelto{0}{\frac{\partial v_{z}}{\partial\theta}}+v_{z}\cancelto{0}{\frac{\partial v_{z}}{\partial z}}\right)\\
=-\frac{\partial p}{\partial z}+\rho g_{z}+\left(\frac{1}{r}\frac{\partial}{\partial r}\left(r\tau_{rz}\right)+\frac{1}{r}\cancelto{0}{\frac{\partial\tau_{\theta z}}{\partial\theta}}+\cancelto{0}{\frac{\partial\tau_{zz}}{\partial z}}\right)\end{gathered}$$

$$\frac{\partial}{\partial r}\left(r\tau_{rz}\right)=\left[\frac{\partial p}{\partial z}-\rho g_{z}\right]r$$

$$r\tau_{rz}=\left[\frac{\mathcal{P}_{L}-\mathcal{P}_{0}}{2L}\right]r^{2}$$
$$\tau_{rz}=\left[\frac{\mathcal{P}_{L}-\mathcal{P}_{0}}{2L}\right]r+\frac{c_{2}}{r}\;\;\&\;\;\left.\tau_{rz}\right\rfloor _{0}=\text{finite}\;\;\therefore\;\;c_{2}=0$$

$$\tau_{rz}=-\mu\frac{\partial v_{z}}{\partial r}$$

$$\frac{\partial v_{z}}{\partial r}=\left[\frac{\mathcal{P}_{L}-\mathcal{P}_{0}}{2\mu L}\right]r$$

$$v_{z}=\left[\frac{\mathcal{P}_{L}-\mathcal{P}_{0}}{4\mu L}\right]r^{2}+c_{3}\;\;\&\;\;\left.v_{z}\right\rfloor _{R}=0\;\;\therefore\;\;c_{3}=-\left[\frac{\mathcal{P}_{L}-\mathcal{P}_{0}}{4\mu L}\right]R^{2}$$

$$v_{z}=\frac{\left(\mathcal{P}_{L}-\mathcal{P}_{0}\right)R^{2}}{4\mu L}\left[1-\left(\frac{r}{R}\right)^{2}\right]$$
>>>>>>> ec9dae5cc421b69d72fd8a2b331f1590db9c4064
