function A2Q3(pan, x_le)

%get them salty
sp_pan = salNpep(pan);
sp_le  = salNpep(x_le);

%apply mean filter
mean_pan = meanf(sp_pan);
mean_le = meanf(sp_le);

%apply median filter
med_pan = medianf(sp_pan);
med_le = medianf(sp_le);

%plot results 
figure(1);
subplot(2,2,1),imshow(pan,[0 255]),title('Original');
subplot(2,2,2),imshow(sp_pan,[0 255]),title('20% Salt N Pepper');
subplot(2,2,3),imshow(mean_pan,[0 255]),title('after Mean filter');
subplot(2,2,4),imshow(med_pan,[0 255]),title('after Median filter');

figure(2);
subplot(2,2,1),imshow(x_le,[0 255]),title('Original');
subplot(2,2,2),imshow(sp_le,[0 255]),title('20% Salt N Pepper');
subplot(2,2,3),imshow(mean_le,[0 255]),title('after Mean filter');
subplot(2,2,4),imshow(med_le,[0 255]),title('after Median filter');

end