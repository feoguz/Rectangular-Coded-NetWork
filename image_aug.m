%image augmenter 
%15 30 45 60 ... 345
clear
%% for label "0"
  
srcFiles = dir('C:\Users\eneso\Desktop\Doktora İçin Araştırma\Kodlar ve Veriler\teapformat\Heart Failure\Rectangular Coded NetWork\Image Data Set without augmentation\0\*.jpg');
for i=1:length(srcFiles)
  i
  for j=1:23
filename = strcat('C:\Users\eneso\Desktop\Doktora İçin Araştırma\Kodlar ve Veriler\teapformat\Heart Failure\Rectangular Coded NetWork\Image Data Set without augmentation\0\',srcFiles(i).name);
im = imread(filename);
ang=15*j;
imAugmented = imrotate(im,ang);
 k=imresize(imAugmented,[224,224]);
newfilename=strcat('C:\Users\eneso\Desktop\Doktora İçin Araştırma\Kodlar ve Veriler\teapformat\Heart Failure\Rectangular Coded NetWork\Image Data Set with augmentation\0\','Aug',string(ang),srcFiles(i).name);
imwrite(k,fullfile(newfilename),'jpg');  
  end
end

%% for label "1"
srcFiles = dir('C:\Users\eneso\Desktop\Doktora İçin Araştırma\Kodlar ve Veriler\teapformat\Heart Failure\Rectangular Coded NetWork\Image Data Set without augmentation\1\*.jpg');
for i=1:length(srcFiles)
  i
  for j=1:23
filename = strcat('C:\Users\eneso\Desktop\Doktora İçin Araştırma\Kodlar ve Veriler\teapformat\Heart Failure\Rectangular Coded NetWork\Image Data Set without augmentation\1\',srcFiles(i).name);
im = imread(filename);
ang=15*j;
imAugmented = imrotate(im,ang);
  k=imresize(imAugmented,[224,224]);
newfilename=strcat('C:\Users\eneso\Desktop\Doktora İçin Araştırma\Kodlar ve Veriler\teapformat\Heart Failure\Rectangular Coded NetWork\Image Data Set with augmentation\1\','Aug',string(ang),srcFiles(i).name);
imwrite(k,fullfile(newfilename),'jpg');  
  end
end