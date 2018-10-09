function [AA]=covar1(matrix_past,n)
AA = zeros(n-1,4,n-1) ;
for i=1:n-1
    z=1;
    for j=2:n
        Cov=cov(matrix_past(i,:),matrix_past(j,:));
        a = deal_array(Cov);
        A(z,:)=cell2mat(a);
        z=z+1;
    end
 AA(:,:,i)=A  ; 
end
AA;
end

