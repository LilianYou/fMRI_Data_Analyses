close all
clear all

canonical_hrf = spm_hrf(.4);

stick_function1 = zeros(1,500);
trial_times=101:150;
stick_function1(trial_times)=1;
grp1=conv(stick_function1,canonical_hrf)';
stick_function2 = zeros(1,500);
trial_times=151:200;
stick_function2(trial_times)=1;
grp2=conv(stick_function2,canonical_hrf)';
stick_function3 = zeros(1,500);
trial_times=201:250;
stick_function3(trial_times)=1;
stick=cat(1,stick_function1, stick_function2,stick_function3)';
grp3=conv(stick_function3,canonical_hrf)';
grp=cat(2,grp1, grp2,grp3);
subplot(4,3,1)
plot(stick)
subplot(4,3,4)
plot(grp)


L=[1 0 0;0 1 0;0 0 1;1 -1 0;1 0 -1; 0 1 -1];

for i=1:6;
pow_grp(i)=1/(L(i,:)*(pinv(grp'*grp))*L(i,:)')./(canonical_hrf'*canonical_hrf);
end
pow_grp;
pow_mean_grp=mean(pow_grp);
%pow_grp_old=1/trace((pinv(grp'*grp)))
title(['Detection Power = ',num2str(pow_mean_grp)])

subplot(4,3,7)
imagesc(grp'*grp)
title(['Cov X'])


[u v w]=svd(grp'*grp);
subplot(4,3,10)
imagesc(v)
colorbar
title(['eigenvalues' ])


stick_function1 = zeros(1,500);
trial_times=round(rand(1,50)*99*5)+1;
stick_function1(trial_times)=1;
ran1=conv(stick_function1,canonical_hrf)';
stick_function2 = zeros(1,500);
trial_times=round(rand(1,50)*99*5)+1;
stick_function2(trial_times)=1;
ran2=conv(stick_function2,canonical_hrf)';
stick_function3 = zeros(1,500);
trial_times=round(rand(1,50)*99*5)+1;
stick_function3(trial_times)=1;
ran3=conv(stick_function3,canonical_hrf)';
stick=cat(1,stick_function1, stick_function2,stick_function3)';
ran=cat(2,ran1, ran2,ran3);
subplot(4,3,2)
plot(stick)



for i=1:6;
pow_ran(i)=1/(L(i,:)*(pinv(ran'*ran))*L(i,:)')./(canonical_hrf'*canonical_hrf);
end
pow_ran
pow_mean_ran=mean(pow_ran)
%pow_ran_old=1/trace((pinv(stick'*stick)))
subplot(4,3,5)
plot(ran)
title(['Detection Power = ',num2str(pow_mean_ran)])

subplot(4,3,8)
imagesc(ran'*ran)
title(['Cov X'])

[u v w]=svd(ran'*ran);
subplot(4,3,11)
imagesc(v)
colorbar
title(['eigenvalues' ])

stick_function1 = zeros(1,500);
trial_times=1:10:500;
stick_function1(trial_times)=1;
per1=conv(stick_function1,canonical_hrf)';
stick_function2 = zeros(1,500);
trial_times=4:10:500;
stick_function2(trial_times)=1;
per2=conv(stick_function2,canonical_hrf)';
stick_function3 = zeros(1,500);
trial_times=7:10:500;
stick_function3(trial_times)=1;
stick=cat(1,stick_function1, stick_function2,stick_function3)';
per3=conv(stick_function3,canonical_hrf)';
per=cat(2,per1, per2,per3);
subplot(4,3,3)
plot(stick)


for i=1:6;
pow_per(i)=1/(L(i,:)*(pinv(per'*per))*L(i,:)')./(canonical_hrf'*canonical_hrf);
end
pow_per
pow_mean_per=mean(pow_per)
subplot(4,3,6)
plot(per)
title(['Detection Power = ',num2str(pow_mean_per)])

subplot(4,3,9)
imagesc(per'*per)
title(['Cov X'])

[u v w]=svd(per'*per);
subplot(4,3,12)
imagesc(v)
colorbar
title(['eigenvalues' ])


