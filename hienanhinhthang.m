% function [x,y] = hienanhinhthang (fxy,x0,xn,y0,N,e)
%     h = (xn-x0)/N;
%     y = zeros(1,N+1);
%     y(1) = y0;
%     x = x0:h:xn;
%     
%     for i = 1: N
%         yt = y(i) + h * fxy(x(i),y(i));        
%         while(1)
%          
%             y(i+1) = y(i) + h/2 * (fxy(x(i),y(i)) + fxy(x(i+1),yt));
%             if (abs(y(i+1)-yt)<=e)
%                 break
%             else
%                 yt = y(i+1);
%             end
%         end
% end
function [x,y] = hienanhinhthang (fxy,x0,xn,y0,N,e)
    h = (xn-x0)/N;
    y = zeros(1,N+1);
    y(1) = y0;
    x = x0:h:xn;
    for i = 1: N
        yt = y(i) + h * fxy(x(i),y(i));
        while(1)
            y(i+1) = y(i) + h/2 * (fxy(x(i),y(i)) + fxy(x(i+1),yt));
            if (abs(y(i+1)-yt)<=e)
                break
            else
                yt = y(i+1);
            end
        end
    end
end
    