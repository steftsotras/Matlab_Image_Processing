function n_Im = imScale(Im,nmin,nmax)

%scale to [nmin nmax]
Im = Im - min(min(Im));
n_Im = (Im * (double(nmax) / max(max(Im)))) +nmin;

end