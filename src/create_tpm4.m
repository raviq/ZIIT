function tpm=create_tpm4(k,g,gg,tpm,ggg,one,two,three,four,five,six,seven,eight)
n=5;
lin=linspace(0,k,n);
linq=linspace(0,k,n);
linpp=linspace(0,k,n);
linqq=linspace(0,k,n);
for i=g:2:16
r = randi([1 n]);
l=ggg(r);
    for j=gg:2:16
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
            if r2==1 || r2==2 || r2==3 || r2==4 || r2==5
            w = lin(1 : 1 : lz+1-r2);
            end
            lw=length(w);
            r3=randi([1 lw]);
            tpm(i,j)=w(r3);
        elseif j==five
            if r3==1 || r3==2 || r3==3 || r3==4 || r3==5
            e = lin(1 : 1 : lw+1-r3);
            end
            le=length(e);
            r4=randi([1 le]);
            tpm(i,j)=e(r4);
        elseif j==six
            if r4==1 || r4==2 || r4==3 || r4==4 || r4==5
            h = lin(1 : 1 : le+1-r4);
            end
            lh=length(h);
            r5=randi([1 lh]);
            tpm(i,j)=h(r5);
        elseif j==seven
            if r5==1 || r5==2 || r5==3 || r5==4 || r5==5
            ii = lin(1 : 1 : lh+1-r5);
            end
            lii=length(ii);
            r6=randi([1 lii]);
            tpm(i,j)=ii(r6);
                     
        elseif j==eight
            summ=l+y(r1)+z(r2)+w(r3)+e(r4)+h(r5)+ii(r6);
            
            tpm(i,j)=k-summ;

        end
                  
    end
end
tpm;
end