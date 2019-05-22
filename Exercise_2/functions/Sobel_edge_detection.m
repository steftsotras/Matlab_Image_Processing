%
function Gimage2 = Sobel_edge_detection(I)
%

%Sobel Masks to calculate GR(n,m) and GC(n,m)
PGC = [1 2 1;0 0 0;-1 -2 -1];
PGR = [-1 0 1; -2 0 2;-1 0 1];

%Apply masks
GR = conv2(I,PGR);
GC = conv2(I,PGC);

%
G = round(sqrt((double(GR).^2 + double(GC).^2)));
Gimage = uint8(G);


%Show result before peak limit
%figure(3);
%imshow(Gimage);



%Implement peak limit

%T = otsu(Gimage);
T = 100;

[n,m] = size(G);

for i=1:n
	for j=1:m
		if G(i,j) > T
			G(i,j) = 255;
		else
			G(i,j) = 0;
        end
    end
end

Gimage2 = uint8(G);

%Show after peak limit applied
%figure(2);
%imshow(Gimage2);

%figure(1);
%subplot(1,3,1),imshow(I),subplot(1,3,2),imshow(Gimage),subplot(1,3,3),imshow(Gimage2);
figure,subplot(1,2,1),imshow(Gimage),subplot(1,2,2),imshow(Gimage2);

end