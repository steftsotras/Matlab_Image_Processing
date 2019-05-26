function LI = laplacian_filter(I)

%laplacian mask alternative
%LM2 = [-1 -1 -1;-1 8 -1;-1 -1 -1];

%laplacian mask
LM = [0 1 0;1 -4 1;0 1 0];

%convolute image with mask
LI = conv2(I,LM,'same');

%scale image to original values
LI = imScale(LI,min(min(I)), max(max(I)));

end