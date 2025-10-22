% Pre-run clearing
clc;   %Clear command window
clf;   %Clear figure window
clear; %Clear variables from RAM

% Set up u(t)
u = @(t) 1.0 .* (t>=0);

% Define h1..h4
h1 = @(t) exp((1/5) .* t) .* (u(t) - u(t-20));
h2 = @(t) 4 .* exp((-1/5) .* t) .* (u(t) - u(t-20));
h3 = @(t) 4 .* exp(-1 .* t) .* u(t) .* (u(t) - u(t-20));
h4 = @(t) 4 .* (exp((-1/5) .* t) - exp(-1 .* t)) .* (u(t) - u(t-20));

% Define t
t = [-1:0.001:20];

% Define x
x = @(t) (u(t) - u(t-3)) .* sin(5 .* t);

% Define tau, dtau, ti, tvec.
dtau = 0.005;
tau = 0:dtau:20; % modified to [0, dtau, 20]
ti = 0;
tvec = 0:.1:20;  % modified to [0, 0.1, 20]

% Define an array to store h1..h4 for code brevity
hs    = {h1, h2, h3, h4};
hname = {'h1(t)=e^(^t^/^5^)(u(t)-u(t-20))',
          'h2(t)=4e^(^-^t^/^5^)(u(t)-u(t-20))',
          'h3(t)=4e^(^-^t^)(u(t)-u(t-20))',
          'h4(t)=4(e^(^-^t^/^5^)-e^(^-^t^))(u(t)-u(t-20))'};
htitle = {
            'h1(\tau) [solid], x(t-\tau) [dashed], h1(\tau)x(t-\tau) [gray]',
            'h2(\tau) [solid], x(t-\tau) [dashed], h2(\tau)x(t-\tau) [gray]',
            'h3(\tau) [solid], x(t-\tau) [dashed], h3(\tau)x(t-\tau) [gray]',
            'h4(\tau) [solid], x(t-\tau) [dashed], h4(\tau)x(t-\tau) [gray]'
          }
haxis = {
            [tau(1) tau(end) 0 10.0],
            [tau(1) tau(end) -1.0 2.0],
            [tau(1) tau(end) -1.0 2.0],
            [tau(1) tau(end) -1.0 2.0]
          }

% Instead of writing the same script once per function, run a for loop through
% the list of functions made above.
for k = 1:numel(hs) %number of array elements (hs)
    h = hs{k};
    y = zeros(size(tvec));
    ti = 0;

    figure('Name', hname{k})

  for t = tvec
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
     xlabel("\tau");
     title(htitle{k});
     c = get(gca,'children');
     set(gca,'children',[c(2);c(3);c(4);c(1)]);

     subplot(2,1,2);
     plot(tvec,y,"r",tvec(ti),y(ti),"ok");

     xlabel("t");
     ylabel("y(t) = \int h(\tau)x(t-\tau) d\tau");
     axis(haxis{k});
     grid;
  end
end
