%These codes convert 8-bit images to 24-bit
%% for label "0"
srcFiles = dir('C:\Users\eneso\Desktop\Doktora İçin Araştırma\Kodlar ve Veriler\teapformat\Heart Failure\Rectangular Coded NetWork\Image Data Set without augmentation\0\*.jpg');
for i=1:length(srcFiles)
  i  
filename = strcat('C:\Users\eneso\Desktop\Doktora İçin Araştırma\Kodlar ve Veriler\teapformat\Heart Failure\Rectangular Coded NetWork\Image Data Set without augmentation\0\',srcFiles(i).name);
im = imread(filename);im1= uint8(im);k=im1;
% k=imresize(im,[227,227]);
% k=rgb2gray(k);
numberOfColorChannels=3;
[rows, columns, numberOfColorChannels] = size(k);
k = reshape(k, rows, columns, numberOfColorChannels);
cmap = gray ;
 if ndims(k) == 2
   k = ind2rgb(k, cmap);
 elseif ndims(k) == 3
%    k=rgb2gray(k); 
 end
%   map = hsv(256); % Or whatever colormap you want.
%   rgbImage = ind2rgb(k, map);
% k=im2double(k);
newfilename=strcat('C:\Users\eneso\Desktop\Doktora İçin Araştırma\Kodlar ve Veriler\teapformat\Heart Failure\Rectangular Coded NetWork\Image Data Set without augmentation\0\',srcFiles(i).name);
imwrite(k,newfilename,'jpg');
%     
end
%% for label "1"
srcFiles = dir('C:\Users\eneso\Desktop\Doktora İçin Araştırma\Kodlar ve Veriler\teapformat\Heart Failure\Rectangular Coded NetWork\Image Data Set without augmentation\1\*.jpg');
for i=1:length(srcFiles)
  i  
filename = strcat('C:\Users\eneso\Desktop\Doktora İçin Araştırma\Kodlar ve Veriler\teapformat\Heart Failure\Rectangular Coded NetWork\Image Data Set without augmentation\1\',srcFiles(i).name);
im = imread(filename);im1= uint8(im);k=im1;
% k=imresize(im,[227,227]);
% k=rgb2gray(k);
numberOfColorChannels=3;
[rows, columns, numberOfColorChannels] = size(k);
k = reshape(k, rows, columns, numberOfColorChannels);
cmap = gray ;
 if ndims(k) == 2
   k = ind2rgb(k, cmap);
 elseif ndims(k) == 3
%    k=rgb2gray(k); 
 end
%   map = hsv(256); % Or whatever colormap you want.
%   rgbImage = ind2rgb(k, map);
% k=im2double(k);
newfilename=strcat('C:\Users\eneso\Desktop\Doktora İçin Araştırma\Kodlar ve Veriler\teapformat\Heart Failure\Rectangular Coded NetWork\Image Data Set without augmentation\1\',srcFiles(i).name);
imwrite(k,newfilename,'jpg');
%     
end
