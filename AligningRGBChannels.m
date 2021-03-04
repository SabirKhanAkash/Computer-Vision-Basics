img = imread('course1image.jpg');

B=imcrop(img,[0,0,1200,341]);
G=imcrop(img,[0,342,1200,340]);
R=img(683:1023,1:400);
b=double(B);
r=double(R);

x_centr = 400/2;
y_centr = 341/2;

sizeOfCroppedImg = 51;

x_min = x_centr - sizeOfCroppedImg/2;
y_min = y_centr - sizeOfCroppedImg/2;

ref_img_region = imcrop(g, [x_min y_min sizeOfCroppedImg-1 sizeOfCroppedImg-1]);
imshow(ref_img_region);
disp(size(ref_img_region));

imshow(b);
pause(2);

imshow(g);
pause(2);

imshow(r);
pause(2);

shiftr = circshift(r,[-10,10]);
cngR = immse(shiftr, r) * numel(shiftr);


disp(cngR);

shiftb = circshift(b,[-10,-10]);
cngB = immse(shiftb, b) * numel(shiftb);


disp(cngB);

%ColorImg_aligned = cat(3,cngR,g,cngB);
%imshow(ColorImg_aligned);