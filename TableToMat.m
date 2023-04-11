function Test_gen=TableToMat(a)

Ta = a;
% Detect which columns are numeric by converting all data to numeric and searching for NaNs. 
Ttest = cellfun(@double,table2cell(Ta)); 
isnum = all(~isnan(Ttest),1);
Tnum = array2table(Ttest(:,isnum),'VariableNames', Ta.Properties.VariableNames(isnum), 'RowNames', Ta.Properties.RowNames);
% Output table
T_converted = [Ta(:,~isnum), Tnum]; 
Test_gen=Ttest;
end