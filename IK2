#This is a header for running the script. 
clc; clear all; close all; 
format compact; format shortG

#Manipulator parameters
l=.2;
a=zeros(2,3);
a(:,1)=[0,0]';
a(:,2)=[0.4,.1]';
a(:,3)=[-.1,.3]';

#Position and orientation (known for Inverse Kinematics)
p=[.05, .1]';
phi=pi/6;

Q=[ cos(phi), -sin(phi);
    sin(phi),  cos(phi)];
c=zeros(2,3);
c(:,1)=p+Q*[0,0]';
c(:,2)=p+Q*[2*l,0]';
c(:,3)=p+Q*[0,l]';

for i=1:3
    W = dot(c(:,i),c(:,i)) + dot(a(:,i),a(:,i)) - 2*dot(c(:,i),a(:,i));
    tmp = 2*l*(a(:,i) - c(:,i));
    U = tmp(1);
    V = tmp(2);
    tha(i) = 2*atan2(-V+sqrt(V^2+U^2-W^2) , W-U);
    thb(i) = 2*atan2(-V-sqrt(V^2+U^2-W^2) , W-U);
end

b=zeros(2,3);
b(:,1)=a(:,1) + l*[cos(tha(1)), sin(tha(1))]';
b(:,2)=a(:,2) + l*[cos(tha(2)), sin(tha(2))]';
b(:,3)=a(:,3) + l*[cos(tha(3)), sin(tha(3))]';

fcn_3dof_Plot_Parallel(a,b,c)
