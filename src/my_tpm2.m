function tpm= my_tpm2(p,q)
n=6;
pp=1-p;
qq=1-q;
tpm=zeros(4,4);
lin=linspace(0,p,n);
linq=linspace(0,q,n);

linpp=linspace(0,pp,n);
linqq=linspace(0,qq,n);
for i=1:2:3
r = rand_generate() ;   
    for j=1:2:3
        if j~=3
        tpm(i,j)=lin(r);
        elseif j==3
            tpm(i,j)=p-lin(r);
        end
    end
end
for i=1:2:3
r = rand_generate();    
    for j=2:2:4
        if j~=4
        tpm(i,j)=linpp(r);
        elseif j==4
            tpm(i,j)=pp-linpp(r);
        end
    end
end
for i=2:2:4
r = rand_generate() ;   
    for j=1:2:3
        if j~=3
        tpm(i,j)=linq(r);
        elseif j==3
            tpm(i,j)=q-linq(r);
        end
    end
end
for i=2:2:4
r = rand_generate();  
    for j=2:2:4
        if j~=4
        tpm(i,j)=linqq(r);
        elseif j==4
            tpm(i,j)=qq-linqq(r);
        end
    end
end
tpm;
end

