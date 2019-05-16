function Q3(disn,mus)

%           ***  a   ***
%Histogram eq in each channel of RGB image

%DISN image
%spliting image RGB channels
r = disn(:,:,1);
g = disn(:,:,2);
b = disn(:,:,3);

%applying histogam eq in each
h_r = histogram_equalisation(r);
h_g = histogram_equalisation(g);
h_b = histogram_equalisation(b);

%merging the individual channels and plot a figure1
disn_rgb = cat(3,h_r, h_g, h_b);
figure(1);
subplot(2,2,1),imshow(disn, 'border', 'tight'),title('before'),subplot(2,2,2),imshow(disn_rgb, 'border', 'tight'),title('after');
subplot(2,2,3),histogram(disn),subplot(2,2,4),histogram(disn_rgb);
suptitle('Applying histogram eq directly to the RGB color model');
%Museum image
%spliting image RGB channels
r = mus(:,:,1);
g = mus(:,:,2);
b = mus(:,:,3);

%applying histogam eq in each
h_r = histogram_equalisation(r);
h_g = histogram_equalisation(g);
h_b = histogram_equalisation(b);

%concat the channels
mus_rgb = cat(3,h_r, h_g, h_b);

%start plotin figure 2
figure(2)
subplot(2,2,1),imshow(mus, 'border', 'tight'),title('before'),subplot(2,2,2),imshow(mus_rgb, 'border', 'tight'),title('after');
subplot(2,2,3),histogram(mus),subplot(2,2,4),histogram(mus_rgb);
suptitle('Applying histogram eq directly to the RGB color model');


%           ***  b   ***
%Histogram eq in HSI colorspace

%Transfer to HSI
disn_hsi = rgb2hsv(disn);
mus_hsi  = rgb2hsv(mus);

%we only have to apply the method in the third (Intensity) channel
I_disn = disn_hsi(:,:,3);
I_mus  = mus_hsi(:,:,3);

%transfer range from 0 1 to 0 255
%so histogram eq can be applied 
I_disn = linear_transformation(I_disn,0,255);
I_mus = linear_transformation(I_mus,0,255);

%apply histogram eq
I_disn = histogram_equalisation(I_disn);
I_mus  = histogram_equalisation(I_mus);

%transfer range from 0 255 back to 0 1
I_disn = double(I_disn)/255;
I_mus = double(I_mus)/255;

%Replacing the equalised Intensity to the image
disn_hsi(:,:,3) = I_disn;
mus_hsi(:,:,3) = I_mus;

%transfer to rgb again
n_disn = hsv2rgb(disn_hsi);
n_mus  = hsv2rgb(mus_hsi);

figure(3);
subplot(2,2,1),imshow(disn, 'border', 'tight'),title('before'),subplot(2,2,2),imshow(n_disn, 'border', 'tight'),title('after');
subplot(2,2,3),histogram(disn),subplot(2,2,4),histogram(n_disn);
suptitle('Applying histogram eq to HSI');

figure(4);
subplot(2,2,1),imshow(mus, 'border', 'tight'),title('before'),subplot(2,2,2),imshow(n_mus, 'border', 'tight'),title('after');
subplot(2,2,3),histogram(mus),subplot(2,2,4),histogram(n_mus);
suptitle('Applying histogram eq to HSI');

end