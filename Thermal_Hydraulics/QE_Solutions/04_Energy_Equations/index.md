---
layout: post-no-feature
<<<<<<< HEAD
date: 
title: 
=======
date: 1/4/15
title: Energy Equations 
>>>>>>> ec9dae5cc421b69d72fd8a2b331f1590db9c4064
author: Alex Hagen
---


<<<<<<< HEAD
=======
Energy Equation
===============

Applying the the GBE $\psi=\rho\left(u+\frac{\vec{v}^{2}}{2}\right)$,
$\boldsymbol{J}=\vec{q}+\boldsymbol{T}\vec{v}$, and
$\dot{\psi_{g}}=\rho\vec{v}\cdot\vec{g}+\dot{q}$, we get

$$\begin{gathered}
\underbrace{\frac{\partial\left(\rho\left(u+\frac{\vec{v}^{2}}{2}\right)\right)}{\partial t}}_{\substack{\text{rate of energy change}\\
\text{per unit volume}
}
}+\underbrace{\nabla\cdot\rho\vec{v}\left(u+\frac{\vec{v}^{2}}{2}\right)}_{\substack{\text{rate of energy change}\\
\text{by convection per unit}\\
\text{volume}
}
}\\
=-\underbrace{\nabla\cdot\vec{q}}_{\substack{\text{conduction}}
}-\underbrace{\nabla\cdot\left(p\vec{v}\right)}_{\substack{\text{work done by}\\
\text{pressure}
}
}-\underbrace{\nabla\cdot\left(\boldsymbol{\tau}\cdot\vec{v}\right)}_{\substack{\text{work done by}\\
\text{viscous force}
}
}+\underbrace{\rho\left(\vec{v}\cdot\vec{g}\right)}_{\substack{\text{work done}\\
\text{by gravity}
}
}+\underbrace{\dot{q}}_{\substack{\text{heat}\\
\text{generation}
}
}\end{gathered}$$

to put this in a more usable form, we can do a couple steps to split it
into separate kinetic energy and internal energy forms. First, we FOIL
the flux terms:

$$-\nabla\cdot\left(p\vec{v}\right)=-\underbrace{p\nabla\cdot\vec{v}}_{\substack{\text{reversible}\\
\text{\ensuremath{pdV} work}
}
}-\underbrace{\vec{v}\cdot\nabla p}_{\substack{\text{kinetic}\\
\text{energy}
}
}$$

$$-\nabla\cdot\left(\boldsymbol{\tau}\cdot\vec{v}\right)=-\underbrace{\boldsymbol{\tau}:\nabla\vec{v}}_{\substack{\text{irreversible}\\
\text{viscous work}
}
}-\underbrace{\vec{v}\cdot\nabla\cdot\boldsymbol{\tau}}_{\substack{\text{kinetic}\\
\text{energy}
}
}$$

These create the two forms:

-   Internal Energy:
    $$\frac{Du}{Dt}=-\nabla\cdot\vec{q}-p\nabla\cdot\vec{v}-\boldsymbol{\tau}:\nabla\vec{v}+\dot{q}$$

-   Kinetic Energy:
    $$\frac{D\frac{\vec{v}^{2}}{2}}{Dt}=-\vec{v}\cdot\nabla p-\vec{v}\cdot\nabla\cdot\boldsymbol{\tau}+\rho\vec{v}\cdot\vec{g}$$

These are not basic balance equations, though, because they don’t follow
the form $\nabla\left(\,\;\;\;\right)$.

Other equations to remember:

-   Poisson Heat Equation:
    $$\rho c_{p}\frac{\partial T}{\partial t}=\nabla\cdot\left(k\nabla T\right)+\dot{q}$$

-   Temperature Equation:
    $$\rho c_{v}\frac{DT}{Dt}=\rho c_{v}\frac{\partial T}{\partial t}+\rho c_{v}\vec{v}\nabla\cdot T=k\nabla^{2}T-\boldsymbol{\tau}:\nabla\vec{v}+T\left.\frac{\partial p}{\partial T}\right)_{\rho}\nabla\cdot\vec{v}+\dot{q}$$


>>>>>>> ec9dae5cc421b69d72fd8a2b331f1590db9c4064
