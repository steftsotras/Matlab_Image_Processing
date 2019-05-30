function ly = fft2d(I)

%fourier and shift to center
nI = fft2(I);
y = fftshift(nI);

%plot
%linear
figure;

subplot(1,3,1);
imshow(I,[0 255]);

subplot(1,3,2);
imshow(abs(y),[0 255]);

%LOG
ly = fftshift(log(abs(nI)));

subplot(1,3,3);
imshow(abs(ly),[]);

end