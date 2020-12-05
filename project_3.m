A = imread('WIT.jpg');
X = double(rgb2gray(A));
[U, S, V] = svd(X);
X = U*S*V';
imagesc(X), axis off, colormap gray

% Rank 10
%for i = 11:543
%    S(i,i) = 0.0;
%end

% Rank 20
%for i = 21:543
%    S(i,i) = 0.0;
%end

% Rank 30
for i = 31:543
    S(i,i) = 0.0;
end

D = U*S*V';
imagesc(D), axis off, colormap gray