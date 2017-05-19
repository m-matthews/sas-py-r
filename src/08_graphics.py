#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from matplotlib import cm
#from mpl_toolkits.mplot3d import Axes3D

# ------------
# SCATTER PLOT
# ------------
df1 = pd.DataFrame.from_dict({'x': np.arange(0.0, 4.0, 0.1),
                              'y': np.sin(np.arange(0.0, 8.0, 0.2))})
df2 = pd.DataFrame.from_dict({'x': np.arange(0.0, 4.0, 0.1),
                              'y': np.cos(np.arange(0.0, 8.0, 0.2))})

plt.figure(1)
plt.plot(df2['x'], df2['y'], 'g--')
plt.show()
#plt.savefig("../images/08_python_plot.png")

plt.figure(1)
plt.subplot(211)
plt.plot(df1['x'], df1['y'], 'g--',
         df2['x'], df2['y'], 'b--')
plt.subplot(212)
plt.plot(df2['x'], df2['y'], 'r--')
plt.show()

# ---------
# BAR CHART
# ---------
df1 = pd.DataFrame.from_dict({'x': ['A', 'B', 'C', 'D'],
                              'y': [1.0, 3.0, 4.0, 2.0]})

fig, ax = plt.subplots()
x_ticks = np.arange(len(df1['x']))
ax.bar(x_ticks, df1['y'])
ax.set_xticks(x_ticks)
ax.set_xticklabels(df1['x'])
plt.show()
#plt.savefig("../images/08_python_chart.png")

# -------
# 3D PLOT
# -------
x = np.arange(-5, 5, 0.25)
y = np.arange(-5, 5, 0.25)
x, y = np.meshgrid(x, y)
z = np.sin(np.sqrt(x**2 + y**2))

fig = plt.figure()
ax = fig.gca(projection = '3d')
surf = ax.plot_surface(x, y, z,
                       cmap = cm.coolwarm,
                       linewidth = 1)
plt.show()
#plt.savefig("../images/08_python_surface.png")
