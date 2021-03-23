function [] = fcn_3dof_Plot_Parallel(a,b,c)

a1=a(:,1);
a2=a(:,2);
a3=a(:,3);

b1=b(:,1);
b2=b(:,2);
b3=b(:,3);

c1=c(:,1);
c2=c(:,2);
c3=c(:,3);


figure; axis equal; hold on; grid on;
axis([-.2 .6 -.2 .6])
line([a1(1), b1(1)],[a1(2), b1(2)], "LineWidth",2); 
line([a2(1), b2(1)],[a2(2), b2(2)], "LineWidth",2)
line([a3(1), b3(1)],[a3(2), b3(2)], "LineWidth",2)

line([c1(1), b1(1)],[c1(2), b1(2)], "LineWidth",2, "Color","red");
line([c2(1), b2(1)],[c2(2), b2(2)], "LineWidth",2, "Color","red")
line([c3(1), b3(1)],[c3(2), b3(2)], "LineWidth",2, "Color","red")

line(   [c1(1), c2(1), c3(1), c1(1)],...
        [c1(2), c2(2), c3(2), c1(2)], "LineWidth",2, "Color","green");
        
endfunction
