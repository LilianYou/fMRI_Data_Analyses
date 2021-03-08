close all
clear all
Xfast=load('katherine_chunked_seq.txt');
Xperiod=load('michael_chunked_seq.txt');

Xfast2=Xfast(:,[1 2]);
Xperiod2=Xperiod(:,[1 2]);

canonical_hrf = spm_hrf(.4);

for i=1:2
    Xfast3(:,i)=conv(Xfast2(:,i),canonical_hrf)';
    Xperiod3(:,i)=conv(Xperiod2(:,i),canonical_hrf)';
end

eff_ran=trace(Xfast3'*Xfast3);
eff_period=trace(Xperiod3'*Xperiod3);

subplot(4,2,1)
imagesc(Xfast3)
title(['Detection Power = ',num2str(eff_ran)])

subplot(4,2,2)
imagesc(Xperiod3)
title(['Detection Power = ',num2str(eff_period)])


subplot(4,2,3)
imagesc(Xfast3'*Xfast3)
title(['Covariance Random'])
colorbar


subplot(4,2,4)
imagesc(Xperiod3'*Xperiod3)
title(['Covariance Periodic'])
colorbar


[u v x]=svd(Xfast2'*Xfast2);

subplot(4,2,5)
imagesc(v)
title(['eigenvalues no hrf'])
colorbar


[u v x]=svd(Xperiod2'*Xperiod2);


subplot(4,2,6)
imagesc(v)
title(['eigenvalues no hrf'])
colorbar


[u v x]=svd(Xfast3'*Xfast3);

subplot(4,2,7)
imagesc(v)
title(['eigenvalues'])
colorbar


[u v x]=svd(Xperiod3'*Xperiod3);


subplot(4,2,8)
imagesc(v)
title(['eigenvalues'])
colorbar




