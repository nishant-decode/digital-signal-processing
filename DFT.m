xn = input('Enter the sequence x(n): '); ln = length(xn);
xk = zeros(1, ln);
ixk = zeros(1, ln);
% DFT of the sequence
for k = 0:ln-1
    for n = 0:ln-1
xk(k+1) = xk(k+1) + (xn(n+1) * exp((1i) * 2 * pi * k * n / ln));
end end
t = 0:ln-1;
subplot(221);
stem(t, xn);
ylabel('Amplitude');
xlabel('Time Index');
title('Input Sequence');
% Magnitude response
magnitude = abs(xk);
t = 0:ln-1;
subplot(222);
stem(t, magnitude);
ylabel('Amplitude');
xlabel('K');
title('Magnitude Response');
% Phase response
phase = angle(xk);
t = 0:ln-1;
subplot(223);
stem(t, phase);
ylabel('Phase');
xlabel('K');
title('Phase Response');
% IDFT of the sequence
for n = 0:ln-1
    for k = 0:ln-1
        ixk(n+1) = ixk(n+1) + (xk(k+1) * exp(1i * 2 * pi * k * n / ln));
end
    ixk = ixk ./ ln;
end
% Plot IDFT sequence
t = 0:ln-1;
subplot(224);
stem(t, real(ixk));
ylabel('Amplitude');
xlabel('Time Index');
title('IDFT sequence');
