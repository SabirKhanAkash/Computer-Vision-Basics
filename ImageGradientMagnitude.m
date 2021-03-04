img = imread('image1.jpg');
imshow(img);
pause(2);

[Gx,Gy] = imgradientxy(img,'sobel');
disp(size(Gx));
disp(size(Gy));

imshowpair(Gx,Gy,'montage')
pause(2);

[Gmag, Gdir] = imgradient(Gx,Gy);

disp(size(Gmag));
disp(size(Gdir));

imshowpair(Gmag,Gdir,'montage')
