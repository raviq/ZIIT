function [Cov_X Cov_XY Cov_Y] = calculate_cov_matrix4(matrix_past,matrix_present)
AA=covar1(matrix_past,4);
A = cat(1,AA(:,:,1),AA(:,:,2), AA(:,:,3));
Cov_X=[A(1,1),A(1,2),A(2,2),A(3,2);A(1,3),A(1,4),A(5,2),A(6,2);A(2,3),A(5,3),A(9,1),A(9,2);A(3,3),A(6,3),A(9,3),A(9,4)];
BB=covar1(matrix_present,4);
B = cat(1,BB(:,:,1),BB(:,:,2), BB(:,:,3));
Cov_Y=[B(1,1),B(1,2),B(2,2),B(3,2);B(1,3),B(1,4),B(5,2),B(6,2);B(2,3),B(5,3),B(9,1),B(9,2);B(3,3),B(6,3),B(9,3),B(9,4)];
Cov_XY=cross_cov(matrix_past,matrix_present,4);
end



 