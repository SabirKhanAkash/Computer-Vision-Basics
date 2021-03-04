img = imread('course1image.jpg');

B=imcrop(img,[0,0,1200,341]);
G=imcrop(img,[0,342,1200,340]);
R=img(683:1023,1:400);

b=double(B);
g=double(G);
r=double(R);

b1 = B(146:196,175:225);
r1 = R(146:196,175:225);

ref_img_region = G(146:196,175:225);
ref_img_region = double(ref_img_region);

error = inf;
for i = -10:10
    for j = -10:10
        shiftr1 = circshift(r1,[i,j]);
        temp1 = sum(sum((double(ref_img_region) - double(shiftr1)) .^ 2));
        
        if temp1 < error
            error = temp1;
            shiftR_row = i;
            shiftR_col = j;
            
        end
    end
end

error = inf;
for i = -10:10
    for j = -10:10
        shiftb1 = circshift(b1,[i,j]);
        temp2 = sum(sum((double(ref_img_region) - double(shiftb1)) .^ 2));
        
        if temp2 < error
            error = temp2;
            shiftb_row = i;
            shiftb_col = j;
            
        end
    end
end

shiftr = circshift(r,[shiftR_row,shiftR_col]);
shiftb = circshift(b,[shiftb_row,shiftb_col]);

ColorImg_aligned = cat(3,uint8(shiftr),uint8(g),uint8(shiftb));
imshow(ColorImg_aligned);