function[final]=rgbHistogram(imagine, count_bins)
	img1 = imread(imagine);
	matR = img1(:,:,1);
	matG = img1(:,:,2);
	matB = img1(:,:,3);
	
	j = 1;
	n = 256/count_bins;
	for i = 0:count_bins-1
		inf = n*i;
		sup = n*(i+1);

		% pentru R
		%gasire elemente din intervalul [inf, sup)
		aux1 = matR(matR >= inf);
		aux2 = aux1(aux1 < sup);
		vR(j) = length(aux2); % nr de elemente din interval

		% pentru G
		aux1 = matG(matG >= inf);
		aux2 = aux1(aux1 < sup);
		vG(j) = length(aux2);

		% pentru B
		aux1 = matB(matB >= inf);
		aux2 = aux1(aux1 < sup);
		vB(j) = length(aux2);

		j = j + 1;
	end
	final = [vR, vG, vB];
endfunction