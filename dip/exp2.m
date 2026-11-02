clc;
clear all;
close all;
rp = 0.04;
rs=0.02;
fp=1500;
fs=2000;
f=8000;
wp=2*fp/f;
ws=2*fs/f;
wp
ws
num = 20*+log10(sqrt(rp*rs))-13;
dem = 14.6*(fs-fp)/f;
n=ceil(num/dem);
n1= n+1;
if (rem(n,2) ~= 2)
    n1=n;
    n=n-1;
end

y= boxcar(n1);
n1
b= firl(n,wp,y);
[h,o] = freqz(b,1,256);
m=20*log10(abs(h));
plot(o/pi,m);title("Magnitude response of FIR filter");
grid
ylabel('Gain in dB-->');
xlabel('Normalised Frequency');

