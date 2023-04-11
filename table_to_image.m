%This code transposes table data. It then generates 224 features 
% with the gencfeatures function. 
% Output will be "Data_gen" and "Label"
bbData=heartfailureclinicalrecordsdatasetRawDataSet;
DataSet=rows2vars(bbData(:,1:end-1));
DataSet=DataSet(:,2:end);
Label=categorical(bbData{:,bbData.Properties.VariableNames(:,end)});
YourArray = table2array(DataSet);
YourNewTable = array2table(YourArray.');
[T,Tbl] = gencfeatures(YourNewTable,Label,224);
 Data_gen=TableToMat(Tbl); %function