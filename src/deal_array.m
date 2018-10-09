function [a] = deal_array(arr)
    n = length(arr);
    for i = 1:n
        var(i) = {arr(i)}; 
    end
    a11=var(1);a12=var(2);
    arr=arr(:,2);
    for i = 1:n
        var(i) = {arr(i)}; 
    end
     a21=var(1);a22=var(2);
     a=[a11,a21,a12,a22];    
end