function [s11 ,s12,s13,s14,s15,s21,s22,s23,s24,s25,s31,s32,s33,s34,s35,s41,s42,s43,s44,s45,s51,s52,s53,s54,s55]=savee(save)
s1=save(1,:);
s11=s1(1:5);
s12=s1(6:10);
s13=s1(11:15);
s14=s1(16:20);
s15=s1(21:25);

s2=save(2,:);
s21=s2(1:5);
s22=s2(6:10);
s23=s2(11:15);
s24=s2(16:20);
s25=s2(21:25);

s3=save(3,:);
s31=s3(1:5);
s32=s3(6:10);
s33=s3(11:15);
s34=s3(16:20);
s35=s3(21:25);

s4=save(4,:);
s41=s4(1:5);
s42=s4(6:10);
s43=s4(11:15);
s44=s4(16:20);
s45=s4(21:25);

s5=save(5,:);
s51=s5(1:5);
s52=s5(6:10);
s53=s5(11:15);
s54=s5(16:20);
s55=s5(21:25);

[s11 ,s12,s13,s14,s15,s21,s22,s23,s24,s25,s31,s32,s33,s34,s35,s41,s42,s43,s44,s45,s51,s52,s53,s54,s55];
end