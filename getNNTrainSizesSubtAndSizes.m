function [ subtBinCount, sizeBinCount  ] = getNNTrainSizesSubtAndSizes( myTR)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
[e,~]=loadClincData('C:\Users\Yasser\Desktop\Data\DataSet\PartionedData\LungCN\All\','All_CD.xlsx');
li=find(myTR.trainInd<=154,1,'last');
eTrain=e(myTR.trainInd(1:li),:);
ids=[eTrain{:,2}];

subtBinCount=[];for i=1:5;subtBinCount=[subtBinCount sum(ids==i)];end;
nsizes=[eTrain{:,3}];

%nodule sizes in bins
sizeBinEdges=[5 10 15 20 25 30 35 61];
sizeBinInd=discretize(nsizes,sizeBinEdges);
sizeBinCount=[];for i=1:7;sizeBinCount=[sizeBinCount sum(sizeBinInd==i)];end;

end

