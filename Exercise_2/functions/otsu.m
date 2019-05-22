function T = otsu(Im)

%Allocate space
sb = zeros(256);

%getting row column size and image total
[nr,nc] = size(Im);
Imsize = nr * nc;

%splitting histogram variables
[P,x] = imhist(Im);
%subplot(1,2,1), bar(x,P),title('Histogram');

%Algorithm calculating clusters C0, C1
%and their centers

p = P/Imsize;
for k=1:256
    C0(1:k)=p(1:k);
    %C1(k+1:L)=p(k+1:L);
    w0 = sum(C0);
    if(w0 > 0)
        w1 = 1 - w0;
    if(w1 > 0)
        %Calculate m0 the center of C0
        m0 = 0;
        for i=1:k
            m0 = m0 + i*p(i);
        end
        m0 = m0 / w0;
        
        %Calculate m1 the center of C1
        m1 = 0;
        for i=k+1:256
            m1 = m1 + i*p(i);
        end
        m1 = m1 / w1;
        
        %Ypologismos tis rophs pithanothtas sb gia
        %ta diafora kentra
        sb(k) = w0*w1*(m1-m0)*(m1-m0);
    end
    end 
end

%return [peak, T]
[peak, T] = max(sb);


end    