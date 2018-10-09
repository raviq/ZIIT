function [Cov_X Cov_XY Cov_Y] = calculate_cov_matrix(matrix_past,matrix_present)
AA=covar1(matrix_past,2);
Cov_X=[AA(1,1),AA(1,2);AA(1,3),AA(1,4)];
BB=covar1(matrix_present,2);
Cov_Y=[BB(1,1),BB(1,2);BB(1,3),BB(1,4)];
Cov_XY=cross_cov(matrix_past,matrix_present,2);
end