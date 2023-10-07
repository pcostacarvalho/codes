### This code calculates the dot product between two sets of vectors in order 
### to verify Moryia's rule, which indicates that Rij.Dij = 0.

import numpy as np

Co_n0 = np.loadtxt('dm_Co_n0')
Co_n1 = np.loadtxt('dm_Co_n1')
Co_n2 = np.loadtxt('dm_Co_n2')
Ni_n0 = np.loadtxt('dm_Ni_n0')
Ni_n1 = np.loadtxt('dm_Ni_n1')
Ni_n2 = np.loadtxt('dm_Ni_n2')


DOT_Co_n0 = []
DOT_Co_n1 = []
DOT_Co_n2 = []
DOT_Ni_n0 = []
DOT_Ni_n1 = []
DOT_Ni_n2 = []

print("Co/Pt(111)")

for i in range(0,36):
    R = Co_n0[i,2:5]
    DM = Co_n0[i,5:8]
    DOT_Co_n0.append(np.dot(R,DM))
    print(np.dot(R,DM))

with open('Dot_Co_n0.txt', 'w') as filehandle:
    filehandle.writelines("%f\n" % dot for dot in DOT_Co_n0)
    
print("Co/Ir/Pt(111)")

for i in range(0,36):
    R = Co_n1[i,2:5]
    DM = Co_n1[i,5:8]
    DOT_Co_n1.append(np.dot(R,DM))
    print(np.dot(R,DM))

with open('Dot_Co_n1.txt', 'w') as filehandle:
    filehandle.writelines("%f\n" % dot for dot in DOT_Co_n1)

print("Co/Ir2/Pt(111)")

for i in range(0,36):
    R = Co_n2[i,2:5]
    DM = Co_n2[i,5:8]
    DOT_Co_n2.append(np.dot(R,DM))
    print(np.dot(R,DM))

with open('Dot_Co_n2.txt', 'w') as filehandle:
    filehandle.writelines("%f\n" % dot for dot in DOT_Co_n2)
    
print("Ni/Pt(111)")

for i in range(0,36):
    R = Ni_n0[i,2:5]
    DM = Ni_n0[i,5:8]
    DOT_Ni_n0.append(np.dot(R,DM))
    print(np.dot(R,DM))

with open('Dot_Ni_n0.txt', 'w') as filehandle:
    filehandle.writelines("%f\n" % dot for dot in DOT_Ni_n0)

print("Ni/Ir/Pt(111)")

for i in range(0,36):
    R = Ni_n1[i,2:5]
    DM = Ni_n1[i,5:8]
    DOT_Ni_n1.append(np.dot(R,DM))
    print(np.dot(R,DM))

with open('Dot_Ni_n1.txt', 'w') as filehandle:
    filehandle.writelines("%f\n" % dot for dot in DOT_Ni_n1)

print("Ni/Ir2/Pt(111)")

for i in range(0,36):
    R = Ni_n2[i,2:5]
    DM = Ni_n2[i,5:8]
    DOT_Ni_n2.append(np.dot(R,DM))
    print(np.dot(R,DM))
        
with open('Dot_Ni_n2.txt', 'w') as filehandle:
    filehandle.writelines("%f\n" % dot for dot in DOT_Ni_n2)
