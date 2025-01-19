% function [x,y] = hienantrungdiem (fxy,x0,xn,y0,N)
%     h = (xn-x0)/N;
%     y = zeros(1,N+1);
%     y(1) = y0;
%     x = x0:h:xn;
%     for i = 1: N
%         yt = y(i) + (h/2) * fxy(x(i),y(i));
%         y(i+1) = y(i) + h*fxy((x(i) + h/2),yt);
%     end
% 
% end
function [x,y] = hienantrungdiem (fxy,x0,xn,y0,N)
    h = (xn-x0)/N;
    y = zeros(1,N+1);
    y(1) = y0;
    x = x0:h:xn;
    for i = 1: N
        yt = y(i) + (h/2) * fxy(x(i),y(i));
        y(i+1) = y(i) + h*fxy((x(i) + h/2),yt);
    end

end
