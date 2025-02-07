function Q2(im,ch)

%Range of Image1
fprintf('Range of image1 : [%d,%d]\n',min(min(im)), max(max(im)));

%Range of Church1
fprintf('Range of church image : [%d,%d]\n',min(min(ch)),max(max(ch)));

%Applying Histogram Equalisation to each image for higher contrast
n_im = histogram_equalisation(im);
n_ch = histogram_equalisation(ch);

%ploting the images
figure(1);
subplot(2,2,1),imshow(im,[0 255]),subplot(2,2,2),imshow(n_im,[0 255]),subplot(2,2,3),histogram(im),subplot(2,2,4),histogram(n_im)
figure(2);
subplot(2,2,1),imshow(ch,[0 255]),subplot(2,2,2),imshow(n_ch,[0 255]),subplot(2,2,3),histogram(ch),subplot(2,2,4),histogram(n_ch)

end