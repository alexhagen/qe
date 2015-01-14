# -*- coding: utf-8 -*-
"""
Spyder Editor

This temporary script file is located here:
C:\Users\ahagen\.spyder2\.temp.py
"""
matplotlib.use('SVG')
from matplotlib import rc
import matplotlib.pyplot as plt
rc('svg',fonttype='none')
rc('font',family='serif',serif='Times',size='14.0')
rc('text',usetex=False)
#rc('text.latex',)

t=[0.000,  0.100,  0.500,  1.000,  2.000,  3.000,  4.000,  5.000,  6.000,  7.000,  8.000,  9.000, 10.000, 11.000, 12.500, 15.000, 17.500, 20.000, 22.500, 25.000, 27.500, 30.000, 32.500, 35.000, 37.500, 40.000]
k=[1.31441, 1.27035, 1.25978, 1.25287, 1.24043, 1.22688, 1.21315, 1.19965, 1.18659, 1.17405, 1.16205, 1.15057, 1.13957, 1.12902, 1.11402, 1.09079, 1.06902, 1.04865, 1.02949, 1.01133, 0.99408, 0.97763, 0.96198, 0.94713, 0.93311, 0.91982]

fig, ax = plt.subplots()
plt.plot(t, k, 'k', linewidth=2)
plt.ylim(ymin=0)

plt.xlabel(r'Time ($t$) [$MWd/kg$]',horizontalalignment='center')
plt.ylabel(r'Infinite Multiplication Factor ($k_{\infty}$) [ ]')

ax.spines['right'].set_visible(False)
ax.spines['top'].set_visible(False)
ax.xaxis.set_ticks_position('bottom')


plt.show()
plt.gcf().set_size_inches(6,3.5)
plt.savefig('myfig.svg',transparent=True, bbox_inches='tight', pad_inches=0.1)