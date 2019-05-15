function Q1(x_fl,x_cl,Mer)

%Saving ranges of each image to a variable
%Range of Flowers
ranges(1,1) = min(min(x_fl));
ranges(1,2) = max(max(x_fl));
fprintf('Range of flower image : [%d,%d]\n',ranges(1,1),ranges(1,2));

%Range of Clock
ranges(1,3) = min(min(x_cl));
ranges(1,4) = max(max(x_cl));
fprintf('Range of clock image : [%d,%d]\n',ranges(1,3),ranges(1,4));

%Range of Merilin
ranges(1,5) = min(min(Mer));
ranges(1,6) = max(max(Mer));
fprintf('Range of Merilin image : [%d,%d]\n',ranges(1,5),ranges(1,6));


%Lineary Transforming each image to fit [0,255] range
%Saving each newly transformed image to a new variable
n_fl = (255/(ranges(1,2) - ranges(1,1))) * (x_fl - ranges(1,1));
n_cl = (255/(ranges(1,4) - ranges(1,3))) * (x_cl - ranges(1,3));
n_Mer = (255/(ranges(1,6) - ranges(1,5))) * (Mer - ranges(1,5));

%Ploting images from before and after the transformation
subplot(3,2,1),imshow(x_fl,[0 255]),title('Flowers before'), subplot(3,2,2), imshow(n_fl,[0 225]), title('Flowers after'),subplot(3,2,3), imshow(x_cl,[0 255]), title('Clock before'), subplot(3,2,4), imshow(n_cl,[0 225]),title('Clock after'), subplot(3,2,5), imshow(Mer,[0 255]), title('Merilin before'), subplot(3,2,6), imshow(n_Mer,[0 225]),title('Merilin after');

end

