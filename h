# -*- coding: utf-8 -*-
"""
Hebb Learning for logical AND function

@author: Amirreza Akbari
"""

import numpy as np
import matplotlib.pyplot as plt

X=np.array([[1, 1, 1],
                    [1, -1, -1],
                    [-1, 1, -1],
                    [-1, -1, -1]])
y=X.T[2]
def hebbian_learning(inp):
     
    w1, w2, b = 0, 0, 0
    for ar in inp:
        # print(ar)
        x1=ar[0]   
        x2=ar[1]
        y=ar[2]
        #print(x1,x2,y)
        
        w1 = w1 + x1 * y
        w2 = w2 + x2 * y
        b = b + y
    
    return w1,w2,b
        
w1,w2,b = hebbian_learning(X)


x1 = np.array([2*min(X[:,0]), 2*max(X[:,0])])
m = -w1/w2
c = b/w2
x2 = m*x1-c
  
# Plotting
fig1 = plt.figure(figsize=(7,6))
plt.plot(X[:, 0][y==1], X[:, 1][y==1], "ro")
plt.plot(X[:, 0][y==-1], X[:, 1][y==-1], "gx")
plt.title('Hebb Learning')
plt.plot(x1, x2, 'k-.')
