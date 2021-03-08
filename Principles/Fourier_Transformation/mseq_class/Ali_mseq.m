function [mseq_orig, kk,ll] = Ali_mseq(trial, power, shift, chunk);
%function y = sg_mseq(trial, power, shift, chunk);
%trial is number of trials, power determines length of sequence, shift
%shifts sequence starting trial
%chunk is number of interations to recombine into block
close all
mparam.base=trial;
mparam.power=power;
mparam.shift=shift;
jj=gen_mseq(mparam);
jj=jj(:,1);
mseq_orig=jj;
subplot(2,1,1)
imagesc(jj')

i=0;
while i<chunk
	jj=clumpvec(jj,1,1);
	jj=clumpvec(jj,2,1);
    jj=clumpvec(jj,3,1);
    jj=clumpvec(jj,4,1);
    jj=clumpvec(jj,5,1);
    jj=clumpvec(jj,6,1);
	i=i+1;
end
subplot(2,1,2)
imagesc(jj')
kk=jj;
ll=mseq_orig;

for i=1:trial-1;
kk(:,i)=kk(:,1);
ll(:,i)=mseq_orig(:,1);
end


for i=1:trial-1;
   iii=find(kk(:,i)~=i);
   kk(iii,i)=0;
   iii=find(ll(:,i)~=i);
   ll(iii,i)=0;
end


