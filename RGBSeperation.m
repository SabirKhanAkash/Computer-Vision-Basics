img = imread('image.jpg');

[r,c] = size(img);
rr=r/3;

disp(r);
disp(c);

B=imcrop(img,[0,0,c,rr]);
G=imcrop(img,[0,rr+1,c,rr-1]);
R=imcrop(img,[0,2*rr+1,c,rr-1]);

% B=imcrop(img,[0,0,1200,341]);
% G=imcrop(img,[0,342,1200,340]);
% R=imcrop(img,[0,684,1200,340]);

imshow(B);
pause(2);
disp(size(B));

imshow(G);
pause(2);
disp(size(G));

imshow(R);
pause(2);
disp(size(R));

ColorImg(:,:,1) = R;
ColorImg(:,:,2) = G;
ColorImg(:,:,3) = B;

rgbImage = cat(3, R, G, B);
imshow(rgbImage)

