%data image constructor for train data
Data_Image=[];
for i=1:299
    A=Data_gen(i,:);
    B=A';
     for j=1:224
  j
  Data_Image=[Data_Image B];
     end
 i   
if Label(i,:)=='1'
filename=sprintf('%d.jpg',i);
newfilename=strcat('C:\Users\eneso\Desktop\Doktora İçin Araştırma\Kodlar ve Veriler\teapformat\Heart Failure\Rectangular Coded NetWork\Image Data Set without augmentation\1\',filename);
imwrite(Data_Image,newfilename,'jpg'); 
else
  filename=sprintf('%d.jpg',i);
newfilename=strcat('C:\Users\eneso\Desktop\Doktora İçin Araştırma\Kodlar ve Veriler\teapformat\Heart Failure\Rectangular Coded NetWork\Image Data Set without augmentation\0\',filename);
imwrite(Data_Image,newfilename,'jpg');   
end
 Data_Image=[];
end




   

