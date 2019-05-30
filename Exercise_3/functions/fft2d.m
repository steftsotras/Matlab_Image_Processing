function ly = fft2d(I)

%fourier and shift to center
nI = fft2(I);
y = fftshift(abs(nI));

%plot
%linear
figure;

subplot(1,3,1);
imshow(I,[0 255]);
title('Original');

subplot(1,3,2);
imshow(abs(y),[0 255]);
title('Linear');

%LOG
ly = fftshift(log(abs(nI)));

subplot(1,3,3);
imshow(abs(ly),[]);
title('Logarithmic');

end