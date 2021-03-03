img = imread('cameraman.tif');

subimg1 = imcrop(img,[0 0 50 50]);
subimg2 = imcrop(img, 207 207 255 255]);

subi1 = double(subimg1);
subi2 = double(subimg2);

SSD = immse(subi1, subi2) * numel(subi1);

disp(SSD);