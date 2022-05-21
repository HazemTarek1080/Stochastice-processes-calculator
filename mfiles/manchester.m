function [t,x] = manchester(bits, bitrate, tshift)

T = (bits)/bitrate; 
n = 5;
N = n*(bits);
dt = T/N;
t = 0:dt:T;
x = zeros(1,length(t)); 
a=tshift*(1/bitrate);
a=fix(a);

for i = 0:(bits)-1
  if randi([0,1],1) == 1
    x(i*n+1:(i+0.5)*n) = 1;
    x((i+0.5)*n+1:(i+1)*n) = -1;
  else
    x(i*n+1:(i+0.5)*n) = -1;
    x((i+0.5)*n+1:(i+1)*n) = 1;
  end
end
for k=0:a-1
 x(k*n+1:(k+1)*n) = 0;
end
