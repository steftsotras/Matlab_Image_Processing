function butlp = BLPF(Im, d0, n)

[P, Q] = size(Im);
P = 2*P;
Q = 2*Q;
butlp = zeros(P,Q);

for u=1:P
    for v=1:Q
        
        %D(u,v)
        d = sqrt((u - P/2).^2 + (v - Q/2).^2);
        
        %butterworth lp filter
        butlp(u,v)= 1/(1 + (d/d0).^(2*n));

    end
end

end