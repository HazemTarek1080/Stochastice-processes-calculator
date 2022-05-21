for i=1:15
    x=randi(10);
    [t,A(i,:)]=unrz(100,1/10,x);
end
