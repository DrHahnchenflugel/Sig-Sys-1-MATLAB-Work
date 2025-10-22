% Create figure window and make visible on screen
% Let's make A = 1 and B = 2
A = 1; B = 2;
u = @(t) 1.0*(t>=0);
x = @(t) A*(u(t-3)-u(t-5));
h = @(t) B*(u(t+5)-u(t+3));
dtau = 0.005; tau = -6:dtau:3;
ti = 0; tvec = -3:.1:5;
y = NaN*zeros(1,length(tvec)); % Pre-allocate memory
for t = tvec,
   ti = ti+1; % Time index
   xh = x(t-tau).*h(tau);
   lxh = length(xh);
   y(ti) = sum(xh.*dtau);
   % Trapezoidal approximation of convolution integral
   subplot(2,1,1),plot(tau,h(tau),"r-",tau,x(t-tau),"r--",t,0,"ok");
   axis([tau(1) tau(end) -2.0 2.5]);
   patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
       [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
       [.8 .8 .8],"edgecolor","none");
   xlabel("\tau"); title("h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]");
   c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]);
   subplot(2,1,2),plot(tvec,y,"r",tvec(ti),y(ti),"ok");
   xlabel("t"); ylabel("y(t) = \int h(\tau)x(t-\tau) d\tau");
   axis([tau(1) tau(end) -1.0 5.0]); grid;
   drawnow;
end
