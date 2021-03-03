RGB = imread('image1.jpg');
imshow(RGB);
pause(2);

HSV = rgb2hsv(RGB);

[h,s,v] = imsplit(HSV);
saturationFactor = 2;
s_sat = s*saturationFactor;
HSV_sat = cat(3,h,s_sat,v*1.5);

imshow(HSV);
pause(2);

RGB_sat = hsv2rgb(HSV_sat);
imshow(RGB_sat);
pause(2);

GrayImg = rgb2gray(RGB_sat);
imshow(GrayImg);