y=1;
for p=0.1:0.1:0.5
    z=1;
    for q=0.1:0.1:0.5
        [tpmI,phi_star_I]=markov_intestine(p,q);
        phi_star_I;
        store(z)=phi_star_I;
        tpms=5;
       [phi_star_B]=markov_bacteria_two(p,q,tpms);
        matrix(z,:)=phi_star_B;
        z=z+1;
    end
    mat = matrix';
    mat = mat(:)';
    save(:,y)=mat;
    storing(:,y)=store;
    y=y+1;
end
storing=storing';
B = storing';
B = B(:)';
B;
u = repelem(B,5)
save=save';
[s11 ,s12,s13,s14,s15,s21,s22,s23,s24,s25,s31,s32,s33,s34,s35,s41,s42,s43,s44,s45,s51,s52,s53,s54,s55]=savee(save);
for p=0.1:0.1:0.5
    for q=0.1:0.1:0.5
        s=[p q];
    end    
end
% plot
n=25;
data = {s11 ,s12,s13,s14,s15,s21,s22,s23,s24,s25,s31,s32,s33,s34,s35,s41,s42,s43,s44,s45,s51,s52,s53,s54,s55};
[B, I] = sort(B);
data = data(I);
dataLabels = (B);
hold on;
for i = 1:numel(data)
    scatter(repmat(i,1,length(data{i})),data{i},'*');
%             [p,q]=legends();
%             legendInfo{i}=['p = ' num2str(p(i)) ' & q = ' num2str(q(i)) ];            
end
hold on;
ax = gca;
ax.XTick = 1:numel(dataLabels);
xtickangle(90)
xlabel("intestine phi*")
ylabel("2 node bacteria phi*")
title("phi* comparison (intrinsic versus extrinsic perspective)")
ax.XTickLabel = dataLabels;
ax.XLim = [0 numel(dataLabels)+1];
% legend(legendInfo)
% output1=[s11 s12 s13 s14 s15 s21 s22 s23 s24 s25 s31 s32 s33 s34 s35 s41 s42 s43 s44 s45 s51 s52 s53 s54 s55]
% figure
% scatter(u,output1)
% axis square
% xlabel('intestine phi*')
% ylabel('bacteria phi*')