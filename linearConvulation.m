%linear convolution of given sequence %create vectors x1 and x2
x1=[1 0 1];
x2=[2 7];
y=conv(x1,x2);
subplot(311)
stem(x1)
xlabel('n')
ylabel('x1[n]');
title('vector x1')
subplot(312)
stem(x2)
xlabel('n')
ylabel('x2[n]');
title('vector x2')
subplot(313)
stem(y)
xlabel('n')
ylabel('y[n]');
title('vector y')
