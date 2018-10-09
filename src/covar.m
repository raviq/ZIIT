% function [Cov_X]=covar(matrix_past)
matrix_past=[1 0 1 0; 1 1 0 1;1 0 0 0;1 0 1 1];
matrix_present=[0 1 1 1; 0 0 1 1;1 1 0 1;1 0 1 0];
n=4;
for i = 1 : n
    past{i}=matrix_past(i,:);
end
% Cov=cov(past{1},past{2});
% [a11,a12,a21,a22] = deal_array(Cov);
% Cov=cov(past{1},past{3});
% [a11,a13,a31,a33] = deal_array(Cov);
% Cov=cov(past{1},past{4});
% [a11,a14,a41,a44] = deal_array(Cov);
% Cov=cov(past{2},past{3});
% [a22,a23,a32,a33] = deal_array(Cov);
% Cov=cov(past{2},past{4});
% [a22,a24,a42,a44] = deal_array(Cov);
% Cov=cov(past{3},past{4});
% [a33,a34,a43,a44] = deal_array(Cov);
% Cov_X=[a11,a12,a13,a14;a21,a22,a23,a24;a31,a32,a33,a34;a41,a42,a43,a44]
% Cov_X = cell2mat(Cov_X);

                   
   
AA = zeros(n,n,n); 
for i=1:n
    z=1;
    for j=1:n
        Cov=cov(past{i},past{j});
        [a11,a12,a21,a22] = deal_array(Cov);
        a=[a11,a12,a21,a22];
        A(z,:)=cell2mat(a);
        z=z+1;
    end
AA(:,:,i)=A ;  
end
AA
Cov_X=[a11,a12,a13,a14;a21,a22,a23,a24;a31,a32,a33,a34;a41,a42,a43,a44]