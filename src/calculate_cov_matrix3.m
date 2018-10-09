function [Cov_X Cov_XY Cov_Y] = calculate_cov_matrix3(matrix_past,matrix_present)
AA=covar1(matrix_past,3);
A = cat(1,AA(:,:,1),AA(:,:,2));
Cov_X=[A(1,1),A(1,2),A(2,2);A(1,3),A(1,4),A(4,2);A(2,3),A(4,3),A(4,4)];
BB=covar1(matrix_present,3);
B = cat(1,BB(:,:,1),BB(:,:,2));
Cov_Y=[B(1,1),B(1,2),B(2,2);B(1,3),B(1,4),B(4,2);B(2,3),B(4,3),B(4,4)];
Cov_XY=cross_cov(matrix_past,matrix_present,3);
end