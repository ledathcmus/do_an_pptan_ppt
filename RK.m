% function [x,y] = RK (fxy,x0,xn,y0,N)
%     h = (xn-x0)/N;
%     y = zeros(1,N+1);
%     y(1) = y0;
%     x = x0:h:xn;
%    % fxy = @(x,y) (1-x)*y;
%     for i = 1: N
%         k1 = h * fxy(x(i),y(i));
%         k2 = h * fxy((x(i) + h/2), (y(i) +k1/2));
%         k3 = h * fxy((x(i) + h/2), (y(i) +k2/2));
%         k4 = h * fxy((x(i) + h), (y(i) +k3));
%         y(i+1) = y(i) + 1/6 * (k1 +2*k2 +2*k3 + k4)
%     end
% 
% end
function [x,y] = RK (fxy,x0,xn,y0,N)
    h = (xn-x0)/N;
    y = zeros(1,N+1);
    y(1) = y0;
    x = x0:h:xn;

    for i = 1: N
        k1 = h * fxy(x(i),y(i));
        k2 = h * fxy((x(i) + h/2), (y(i) +k1/2));
        k3 = h * fxy((x(i) + h/2), (y(i) +k2/2));
        k4 = h * fxy((x(i) + h), (y(i) +k3));
        y(i+1) = y(i) + 1/6 * (k1 +2*k2 +2*k3 + k4)
    end

end
