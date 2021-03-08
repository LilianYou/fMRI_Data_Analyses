close all
clear all
Xfast=load('katherine_chunked_seq.txt');
Xperiod=load('michael_chunked_seq.txt');

eff_fast=1/trace(pinv(Xfast'*Xfast))

eff_period=1/trace(pinv(Xperiod'*Xperiod))

subplot(4,2,1)
imagesc(Xfast)
title(['Efficiency = ',num2str(eff_fast)])

subplot(4,2,2)
imagesc(Xperiod)
title(['Efficiency = ',num2str(eff_period)])


subplot(4,2,3)
imagesc(Xfast'*Xfast)
title(['cov X'])

subplot(4,2,4)
imagesc(Xperiod'*Xperiod)
title(['cov X'])


subplot(4,2,5)
imagesc(pinv(Xfast'*Xfast))
title(['inv_cov X'])
colorbar
subplot(4,2,6)
imagesc(pinv(Xperiod'*Xperiod))
title(['inv_cov X'])
colorbar

[y u v] = svd(Xfast'*Xfast);
[i j k] = svd(Xperiod'*Xperiod);
subplot(4,2,7)
imagesc(u)
title(['eigenvalues of Random '])
colorbar

subplot(4,2,8)
imagesc(j)
title(['eigenvalues of Periodic '])
colorbar



