function n_im = histogram_equalisation(im)

im = uint8(im);

%defining variables
rows = size(im,1);
columns = size(im,2);
total = rows * columns;

freq  = zeros(256,1);
r_cdf = zeros(256,1);

n_im  = uint8(zeros(rows,columns));

sum = 0;

%Frequency of gray intensity level in the image
for i=1:rows
    for j=1:columns
        freq(im(i,j)+1) = freq(im(i,j)+1) + 1;
    end
end

%Calculating the probability density function by
%dividing the total number of pixel from each frequency
pdf = freq/total;

%Calculate the cumulative distribution function
%mult by the density and rounded
for i=1:size(pdf)
    sum = sum + freq(i);
    r_cdf(i) = round(sum/total*255);
end

%Constructing the new high contrast image using the
%rounded cdf for every pixels density 
for i=1:rows
    for j=1:columns
        n_im(i,j) = r_cdf(im(i,j)+1);
    end
end

end