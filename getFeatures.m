
load308ROI;

clear trainData trainDataR;
clear wCoefL1 wCoefL2 wCoefL3 wCoefL4 wCoefL5 wCoefL6 wCoefLdb1;
% coef for 154 nodule images
for i= 1:154
    [c,s]=wavedec2(CNROI{i},7,'bior1.5');
%     [c,s]=wavedec2(CNROI{i},7,'db1');
    
    wCoefL1(i,:)=detcoef2('compact',c,s,1);
    wCoefL2(i,:)=detcoef2('compact',c,s,2);
    wCoefL3(i,:)=detcoef2('compact',c,s,3);
    wCoefL4(i,:)=detcoef2('compact',c,s,4);
    wCoefL5(i,:)=detcoef2('compact',c,s,5);
    wCoefL6(i,:)=detcoef2('compact',c,s,6);

    trainDataR(i,1)=1;
end

% coef for 154 non-nodule images
for i= 155:308
     [c,s]=wavedec2(NNROI{i-154},7,'bior1.5');
%     [c,s]=wavedec2(NNROI{i-154},7,'db1');
  
    wCoefL1(i,:)=detcoef2('compact',c,s,1);
    wCoefL2(i,:)=detcoef2('compact',c,s,2);
    wCoefL3(i,:)=detcoef2('compact',c,s,3);
    wCoefL4(i,:)=detcoef2('compact',c,s,4);
    wCoefL5(i,:)=detcoef2('compact',c,s,5);
    wCoefL6(i,:)=detcoef2('compact',c,s,6);

    trainDataR(i,1)=0;
end


x=[ wCoefL3 ];
trainData=x;
% [b,se,pval,inmodel,stats,nextstep,history]
[~,~,~,inmodel,~,~,~] =stepwisefit(trainData,trainDataR,'display','off');
% trainData0=trainData;
trainData=trainData(:,inmodel);

clear x count  s i inmodel;
dataSet=[trainData trainDataR];
