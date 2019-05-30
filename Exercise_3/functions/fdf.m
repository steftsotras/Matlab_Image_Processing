function fi = fdf(Im, H)

%image dimensions
[M, N] = size(Im);


%add zero padding
%2M x 2N
P = 2*M;
Q = 2*N;

fp = zeros(P,Q);
fp(1:M,1:N) = Im;

%mult with (-1)^x+y to shift Fourier to center
g = fp *((-1).^(P+Q));

%Fourier of image
G = fft2(g);

%multiply filter H * G (convolution in spatial domain)
S = G.*H;

S = S*((-1).^(P+Q));

%real part of reverse Fourier mult with (-1)^x+y
s = real(ifft2(S)) ;

%crop image
fi = s(1:M,1:N);

end