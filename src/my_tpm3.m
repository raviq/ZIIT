function [tpm]=my_tpm3(p,q)
n=5;
pp=1-p;
qq=1-q;
lin=linspace(0,p,n);
linq=linspace(0,q,n);
linpp=linspace(0,pp,n);
linqq=linspace(0,qq,n);
tpm=zeros(8,8);
tpm=create_tpm(p,1,1,tpm,lin,1,3,5,7);
tpm=create_tpm(pp,1,2,tpm,linpp,2,4,6,8);
tpm=create_tpm(q,2,1,tpm,linq,1,3,5,7);
tpm=create_tpm(qq,2,2,tpm,linqq,2,4,6,8);
tpm;
end

