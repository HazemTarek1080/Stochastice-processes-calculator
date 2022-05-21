a=3;
omega=2*pi;
t=[-5:0.01:5];
theta = unifrnd(-pi,pi,1000,1); 
A = zeros(length(theta),length(t));
for i =1:length(theta)
    A(i,:) = a*cos(omega*t+theta(i));
end

