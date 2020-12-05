% Reading an image of rank 543
A = imread('WIT.jpg');

% Convertinf the image into doubles
X = double(rgb2gray(A));

% Setting up the matrix into the SVD form
% Note that S stands for the greek letter "Sigma"
[U, S, V] = svd(X);

X = U*S*V';

% Displaying and adding a filter to the image
imagesc(X), axis off, colormap gray

% We made use of a for loop to be able to change the rank of 
% the image. Bellow, you will find three variations of this image:
% Rank 10, 20, and 30.

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
