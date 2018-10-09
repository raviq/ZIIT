function [sigma] = trans2(C,N)

sigma = zeros(N,1);

for i=1: N
    sigma(i) = C-floor(C/2)*2;
    C = floor(C/2);
end