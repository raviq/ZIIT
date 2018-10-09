function [tpm]=my_tpm4(p,q)
n=5;
pp=1-p;
qq=1-q;
lin=linspace(0,p,n);
linq=linspace(0,q,n);
linpp=linspace(0,pp,n);
linqq=linspace(0,qq,n);
tpm=zeros(16,16);
tpm=create_tpm4(p,1,1,tpm,lin,1,3,5,7,9,11,13,15);
tpm=create_tpm4(pp,1,2,tpm,linpp,2,4,6,8,10,12,14,16);
tpm=create_tpm4(q,2,1,tpm,linq,1,3,5,7,9,11,13,15);
tpm=create_tpm4(qq,2,2,tpm,linqq,2,4,6,8,10,12,14,16);
tpm;

Ind=find(tpm==0);
for k=Ind
    tpm(Ind)=0.0001;
end
tpm;        
end
