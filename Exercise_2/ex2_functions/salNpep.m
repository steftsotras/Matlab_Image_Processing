function s_Im = salNpep(I)

%copy original img
s_Im  = I;

%Defining threshold for black and white pixels
%we want 20% so 51 of the total 255 pixels

%so we cut 25 from black
black = 25;

%and 26 from white 
white = 229;

%get the size of the image
[r,c] = size(I);

%Generate matrix with random values
rand_matrix = rand(r,c)*255;

%setting random pixels to black or white 
s_Im(rand_matrix <= black) = 0;
s_Im(rand_matrix >= white) = 255;

end