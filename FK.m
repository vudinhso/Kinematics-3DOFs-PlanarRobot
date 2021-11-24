clc; clear all; close all; 
format compact; format shortG

#Manipulator parameters
l=.2;
a1=[0,0]';
a2=[0.4,.1]';
a3=[-.1,.3]';
c1=[0,0]';
c2=[2*l,0]';
c3=[0,l]';

#FwdKin

th1_I = 2.3947;
th1_II = -0.18037;
th2_I = 2.6358;
th2_II = 0.54164;
th3_I = 0.93655;
th3_II = -1.9205;

#th1, th2, th3 are known
#We want to find x, y, phi
th1=th1_I;
th2=th2_I;
th3=th3_I;
b1=l*[cos(th1),sin(th1)]'+a1;
b2=l*[cos(th2),sin(th2)]'+a2;
b3=l*[cos(th3),sin(th3)]'+a3;

#Init
xi =  0.05;
yi =  0.1;
phi = pi/6;
q = [xi, yi, phi]'

i=0;
iter = 10;
while (i<iter)
    i=i+1;
    p=[q(1), q(2)]';
    Q=[ cos(q(3)), -sin(q(3));
        sin(q(3)),  cos(q(3))];
    c10=p+Q*c1
    c20=p+Q*c2;
    c30=p+Q*c3;
    #Constrain Equation
    f = [   norm((c10-b1))^2 - l^2;
            norm((c20-b2))^2 - l^2;
            norm((c30-b3))^2 - l^2]
    #Jacobian
    J11 = 2*(c10(1) - b1(1));
    J12 = 2*(c10(2) - b1(2));
    J13 = 0;
    J21 = 2*(c20(1) - b2(1));
    J22 = 2*(c20(2) - b2(2));
    J23 = 2*[-sin(q(3)), cos(q(3))]*(c20-b2);
    J31 = 2*(c30(1) - b3(1));
    J32 = 2*(c30(2) - b3(2));
    J33 = 2*[-sin(q(3)), cos(q(3))]*(c30-b3);
    J = [   J11, J12, J13; 
            J21, J22, J23; 
            J31, J32, J33];
    #Step
    q = q - J\f;
end

a=[a1,a2,a3];
c=[c10,c20,c30];
b=[b1,b2,b3];

fcn_3dof_Plot_Parallel(a,b,c)

