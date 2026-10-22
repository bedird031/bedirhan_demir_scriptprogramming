t = 0:0.002:1.2;
s = 5*sin(2*pi*6*t)+2.5*cos(4*pi*6*t);
rng(1);
signal = s+1.5*randn(size(t));
U1 = 3; U2 = 2;
filtered = signal;
filtered(abs(filtered)<U2) = 0;

figure;
subplot(2,1,1);
plot(t,signal,'--',t,filtered,'-');
hold on;
yline(U1,'b--'); yline(-U1,'b--');
yline(U2,'b:'); yline(-U2,'b:');
plot(t(signal==max(signal)),max(signal),'ko');
plot(t(signal==min(signal)),min(signal),'ko');
legend('Original','Filtered','U1','-U1','U2','-U2','Max/Min','Location','southwest');
grid on;

subplot(2,1,2);
plot(t(signal>U1),signal(signal>U1),'ro');
grid on;