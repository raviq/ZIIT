[Cov_X Cov_XY Cov_Y] = calculate_cov_matrix4(matrix_past,matrix_present)
matrix_past=[1 0 1 0; 1 1 1 1;1 0 0 0;1 1 1 1];
matrix_present=[0 1 1 1; 0 0 1 1;1 1 1 1;1 0 1 0];
[Cov_X]=covar(matrix_past)
[Cov_Y]=covar(matrix_present)



 