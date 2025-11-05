clf;
clc;
clear;

n_a = (-5:5);
n_b = (-20:20);
n_c = (-50:50);
n_d = (-500:500);

epsilon = 1e-12;

D_n_1_a = Dn('x1',n_a);
D_n_2_a = Dn('x2',n_a);
D_n_3_a = Dn('x3',n_a);

D_n_1_b = Dn('x1',n_b);
D_n_2_b = Dn('x2',n_b);
D_n_3_b = Dn('x3',n_b);

D_n_1_c = Dn('x1',n_c);
D_n_2_c = Dn('x2',n_c);
D_n_3_c = Dn('x3',n_c);

D_n_1_d = Dn('x1',n_d);
D_n_2_d = Dn('x2',n_d);
D_n_3_d = Dn('x3',n_d);

figure(1);

subplot(3,2,1);
stem(n_a,abs(D_n_1_a),'.k');
xlabel('n');
ylabel('|D_n|');
title('x_1 magnitude (-5:5)');
subplot(3,2,2);
ph = angle(D_n_1_a);
stem(n_a,ph,'.k');
grid on;
xlabel('n');
ylabel('\angle D_n [rads]');
title('x_1 phase (-5:5)');

subplot(3,2,3);
stem(n_a,abs(D_n_2_a),'.k');
xlabel('n');
ylabel('|D_n|');
title('x_2 magnitude (-5:5)');
subplot(3,2,4);
ph = angle(D_n_2_a);
stem(n_a,ph,'.k');
grid on;
xlabel('n');
ylabel('\angle D_n [rads]');
title('x_2 phase (-5:5)');

subplot(3,2,5);
stem(n_a,abs(D_n_3_a),'.k');
xlabel('n');
ylabel('|D_n|');
title('x_3 magnitude (-5:5)');
subplot(3,2,6);
ph = angle(D_n_3_a);
stem(n_a,ph,'.k');
grid on;
xlabel('n');
ylabel('\angle D_n [rads]');
title('x_3 phase (-5:5)');


figure(2);

subplot(3,2,1);
stem(n_b,abs(D_n_1_b),'.k');
xlabel('n');
ylabel('|D_n|');
title('x_1 magnitude (-20:20)');
subplot(3,2,2);
ph = angle(D_n_1_b);
stem(n_b,ph,'.k');
grid on;
xlabel('n');
ylabel('\angle D_n [rads]');
title('x_1 phase (-20:20)');

subplot(3,2,3);
stem(n_b,abs(D_n_2_b),'.k');
xlabel('n');
ylabel('|D_n|');
title('x_2 magnitude (-20:20)');
subplot(3,2,4);
ph = angle(D_n_2_b);
stem(n_b,ph,'.k');
grid on;
xlabel('n');
ylabel('\angle D_n [rads]');
title('x_2 phase (-20:20)');

subplot(3,2,5);
stem(n_b,abs(D_n_3_b),'.k');
xlabel('n');
ylabel('|D_n|');
title('x_3 magnitude (-20:20)');
subplot(3,2,6);
ph = angle(D_n_3_b);
stem(n_b,ph,'.k');
grid on;
xlabel('n');
ylabel('\angle D_n [rads]');
title('x_3 phase (-20:20)');


figure(3);

subplot(3,2,1);
stem(n_c,abs(D_n_1_c),'.k');
xlabel('n');
ylabel('|D_n|');
title('x_1 magnitude (-50:50)');
subplot(3,2,2);
ph = angle(D_n_1_c);
stem(n_c,ph,'.k');
grid on;
xlabel('n');
ylabel('\angle D_n [rads]');
title('x_1 phase (-50:50)');

subplot(3,2,3);
stem(n_c,abs(D_n_2_c),'.k');
xlabel('n');
ylabel('|D_n|');
title('x_2 magnitude (-50:50)');
subplot(3,2,4);
ph = angle(D_n_2_c);
stem(n_c,ph,'.k');
grid on;
xlabel('n');
ylabel('\angle D_n [rads]');
title('x_2 phase (-50:50)');

subplot(3,2,5);
stem(n_c,abs(D_n_3_c),'.k');
xlabel('n');
ylabel('|D_n|');
title('x_3 magnitude (-50:50)');
subplot(3,2,6);
ph = angle(D_n_3_c);
stem(n_c,ph,'.k');
grid on;
xlabel('n');
ylabel('\angle D_n [rads]');
title('x_3 phase (-50:50)');


figure(4);

subplot(3,2,1);
stem(n_d,abs(D_n_1_d),'.k');
xlabel('n');
ylabel('|D_n|');
title('x_1 magnitude (-500:500)');
subplot(3,2,2);
ph = angle(D_n_1_d);
stem(n_d,ph,'.k');
grid on;
xlabel('n');
ylabel('\angle D_n [rads]');
title('x_1 phase (-500:500)');

subplot(3,2,3);
stem(n_d,abs(D_n_2_d),'.k');
xlabel('n');
ylabel('|D_n|');
title('x_2 magnitude (-500:500)');
subplot(3,2,4);
ph = angle(D_n_2_d);
stem(n_d,ph,'.k');
grid on;
xlabel('n');
ylabel('\angle D_n [rads]');
title('x_2 phase (-500:500)');

subplot(3,2,5);
stem(n_d,abs(D_n_3_d),'.k');
xlabel('n');
ylabel('|D_n|');
title('x_3 magnitude (-500:500)');
subplot(3,2,6);
ph = angle(D_n_3_d);
stem(n_d,ph,'.k');
grid on;
xlabel('n');
ylabel('\angle D_n [rads]');
title('x_3 phase (-500:500)');
