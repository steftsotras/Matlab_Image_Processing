function A3Q2(y)

%butterworth lowpass filter with inputs
% BLPF(Image , D0 (Cutoff Frequency) , n (Order))

%cutoff freq
d0 = 5;

%order of 1
n = 1;
blpf1 = BLPF(y,d0,n);

%order of 5
n = 5;
blpf2 = BLPF(y,d0,n);

%order of 20
n = 20;
blpf3 = BLPF(y,d0,n);

%show results
figure;
%as images
subplot(2,3,1),imshow(blpf1),title('Butterworth LPF - Order of 1');
subplot(2,3,2),imshow(blpf2),title('Butterworth LPF - Order of 5');
subplot(2,3,3),imshow(blpf3),title('Butterworth LPF - Order of 20');

%mesh plot
subplot(2,3,4),mesh(blpf1);
subplot(2,3,5),mesh(blpf2);
subplot(2,3,6),mesh(blpf3);

end