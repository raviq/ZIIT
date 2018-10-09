 function [AA]=cross_cov(matrix_past,matrix_present,n)
AA = zeros(n,n,1) ;
for i=1:n
    z=1;
    for j=1:n
        Cov=cov(matrix_past(i,:),matrix_present(j,:));
        [a] = deal_array(Cov);
        a=a(1,2);
        A(z)=cell2mat(a);
        z=z+1;
    end
  AA(i,:)=A ; 
end
AA;
end

