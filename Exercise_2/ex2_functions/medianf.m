function med_Im = medianf(Im)

%getting size of image and defining the output matrix
[m,n] = size(Im);
med_Im = zeros(m,n);

%iterate through the image matrix
for i=1:m
    for j=1:n
        
        %neighborhood boundaries
        rmin = max(1,i-1);
        rmax = min(m,i+1);
        cmin = max(1,j-1);
        cmax = min(n,j+1);
        
        %neighborhood matrix
        temp = Im(rmin:rmax,cmin:cmax);
        
        %median of neighborhood will be the new value of Im(i,j)
        med_Im(i,j) = median(temp(:));
        
    end
end


end