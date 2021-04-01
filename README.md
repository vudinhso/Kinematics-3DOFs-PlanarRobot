# 3dof-Planar-Parallel-Robot
This is an Octave code repository for the Forward and Inverse Kinematics of a **3-DOFs planar parallel robot**. 

- fcn_3dof_Plot_Parallel: plot the parallel robot. 
- fcn_circcirc: Find the intersection between two circles. 
- FK: Calculate the forward kinematics, which is supposed to be complicated for parallel robots. 
  The joint angles are known. The end-effector configuration is determined with Newton-Raphson algorithm. 
- IK: Calculate the inverse kinematics, which is difficult, but an analytical solution is possible. 
  The Cartesian configuration is known. The joint angles are determined by intersection of circles. 
- IK2: Calculate the inverse kinematics, which is difficult, but an analytical solution is possible. 
  The Cartesian configuration is known. The joint angles are determined by trigonometric formula (half angles). 
