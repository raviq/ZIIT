function tpm=create_tpm(k,g,gg,tpm,ggg,one,two,three,four)
n=5;
lin=linspace(0,k,n);
linq=linspace(0,k,n);
linpp=linspace(0,k,n);
linqq=linspace(0,k,n);
for i=g:2:8
r = randi([1 n]);
l=ggg(r);
    for j=gg:2:8
        if j==one
        tpm(i,j)=l;
        elseif j==two
            if r ==1 || r==2 || r==3 || r==4 || r==5
            y = lin(1 : 1 : n+1-r);
            end
            ly=length(y);
            r1=randi([1 ly]);
            tpm(i,j)=y(r1);
        elseif j==three
            if r1==1 || r1==2 || r1==3 || r1==4 || r1==5
            z = lin(1 : 1 : ly+1-r1);
            end
            lz=length(z);
            r2=randi([1 lz]);
            tpm(i,j)=z(r2);
        elseif j==four
            summ=l+y(r1)+z(r2);
            
            tpm(i,j)=k-summ;

        end
                  
    end
end
tpm;
end