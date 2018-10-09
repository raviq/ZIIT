function [tpm]=build_tpm_i(p,q)
pp=1-p;
qq=1-q;
tpm=1/4*ones(4,4);tpm(2,1)=0.000;tpm(3,1)=0.000;tpm(2,4)=0.000;tpm(3,4)=0.000;
tpm(2,2)=p;tpm(2,3)=pp;tpm(3,2)=q;tpm(3,3)=qq;
tpm;
end