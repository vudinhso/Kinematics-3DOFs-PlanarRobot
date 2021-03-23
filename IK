#This is a header for running the script. 
clc; clear all; close all; 
format compact; format shortG

#Manipulator parameters
l=.2;
a1=[0,0]';
a2=[0.4,.1]';
a3=[-.1,.3]';

#Position and orientation (known for Inverse Kinematics)
p=[.05, .1]';
phi=pi/6;

Q=[ cos(phi), -sin(phi);
    sin(phi),  cos(phi)];
c1=p+Q*[0,0]';
c2=p+Q*[2*l,0]';
c3=p+Q*[0,l]';

[b1_I, b1_II] = fcn_circcirc(a1,c10,l,l)
[b2_I, b2_II] = fcn_circcirc(a2,c20,l,l)
[b3_I, b3_II] = fcn_circcirc(a3,c30,l,l)

th1_I = atan2(b1_I(2)  - a1(2), b1_I(1)  - a1(1)) 
th1_II= atan2(b1_II(2) - a1(2), b1_II(1) - a1(2))

th2_I = atan2(b2_I(2)  - a2(2), b2_I(1)  - a2(1))
th2_II= atan2(b2_II(2) - a2(2), b2_II(1) - a2(1))

th3_I = atan2(b3_I(2)  - a3(2), b3_I(1)  - a3(1))
th3_II= atan2(b3_II(2) - a3(2), b3_II(1) - a3(1))

a=[a1,a2,a3];
c=[c10,c20,c30];
b=[b1_I,b2_I,b3_I];

fcn_3dof_Plot_Parallel(a,b,c)
