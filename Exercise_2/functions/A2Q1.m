function A2Q1(ch2, san)

gch2 = rgb2gray(ch2);
gsan = rgb2gray(san);

tch2 = Sobel_edge_detection(gch2);
tsan = Sobel_edge_detection(gsan);



end