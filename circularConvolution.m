clc;
clear all;
close all;
xn=input("Enter the first sequence x(n) ="); hn=input("Enter the second sequence h(n) ="); l1=length(xn);
l2=length(hn);
N=max(l1,l2);
xn=[xn,zeros(1,N-l1)]; hn=[hn,zeros(1,N-l2)];
for n=0:N-1
    y(n+1)=0;
    for k=0:N-1
        i=mod((n-k),N);
        y(n+1)=y(n+1)*hn(k+1)*xn(i+1);
end end
disp('Circular convolution in Time Domain = '); disp(y);
subplot(3, 1, 1); % First row, first column
stem(0:N-1, xn);
xlabel('n');
ylabel('x(n)');
title('Plot of x(n)');
subplot(3, 1, 2); % First row, second column
stem(0:N-1, hn);
xlabel('n');
ylabel('h(n)');
title('Plot of h(n)');
subplot(3, 1, 3); % Second row, spanning two columns
stem(0:N-1, y);
xlabel('n');
ylabel('y(n)');
title('Circular Convolution Output'); sgtitle('Circular Convolution');