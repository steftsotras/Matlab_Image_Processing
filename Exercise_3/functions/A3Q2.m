function A3Q2(y)

%i)
%different cutoff frequncies and results
d0 = 15;
fi1 = but_to_image(y,d0);

d0 = 300;
fi2 = but_to_image(y,d0);

d0 = 500;
fi3 = but_to_image(y,d0);

%ii)
fi = fi1;

%applying laplacian filter to i) result
l_fi = laplacian_filter(fi);
n_fi = fi - l_fi;
n_fi = linear_transformation(n_fi,min(min(fi)), max(max(fi)));

subplot(1,2,1),imshow(fi,[]),title('Original'),subplot(1,2,2),imshow(n_fi,[]),title('After laplacian filter');

end