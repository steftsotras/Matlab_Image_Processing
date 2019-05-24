function LI = laplacian_filter(I)

%laplacian mask negative
%LM2 = [-1 -1 -1;-1 8 -1;-1 -1 -1];

%laplacian mask
LM = [0 1 0;1 -4 1;0 1 0];

LI = conv2(I,LM,'same');

LI = imScale(LI,min(min(I)), max(max(I)));
%subplot(1,2,1),imshow(LI),subplot(1,2,2),imshow(LI2);

end