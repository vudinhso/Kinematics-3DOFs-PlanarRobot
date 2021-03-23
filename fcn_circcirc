function [sa, sb] = fcn_circcirc(p1,p2,l1,l2)
    #Distance and direction btw centres
    d = norm(p2-p1);
    alpha0 = atan2((p2-p1)(2), (p2-p1)(1));
    
    #Law of cosines
    alpha1 = acos(-(l2^2-l1^2-d^2)/(2*l1*d));
    
    #Angle position of the intersection
    th1 = alpha0 + alpha1;
    th2 = alpha0 - alpha1;
    
    sa = p1 + l1*[cos(th1), sin(th1)]';
    sb = p1 + l1*[cos(th2), sin(th2)]';
    
endfunction
