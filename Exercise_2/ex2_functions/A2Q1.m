function A2Q1(ch2, san)

%convert to grayscale
gch2 = rgb2gray(ch2);
gsan = rgb2gray(san);

%Sobels edge detection
tch2 = Sobel_edge_detection(gch2);
tsan = Sobel_edge_detection(gsan);

%after the thresholding show image
figure,subplot(2,2,1),image(ch2),title('Original'),subplot(2,2,2),image(tch2),title('After thresholding'),subplot(2,2,3),image(san),subplot(2,2,4),image(tsan);

end