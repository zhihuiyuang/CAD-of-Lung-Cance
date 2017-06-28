arr95= zeros(2,7);
arr80 = zeros(2,7);
arr65 = zeros(2,7);
for i=1:10
    
    mytr=getNNWithAcc(0.65,trainData,trainDataR );
    [ nn,nsizes ]=getNNTrainSizesSubtAndSizes(mytr);
    arr65(1,:)=arr65(1,:)+[nn 0 0];
    arr65(2,:)=arr65(2,:)+nsizes;
    
    mytr=getNNWithAcc(0.80,trainData,trainDataR );
    [ nn,nsizes ]=getNNTrainSizesSubtAndSizes(mytr);
    arr80(1,:)=arr80(1,:)+[nn 0 0];
    arr80(2,:)=arr80(2,:)+nsizes;
    
    
    mytr=getNNWithAcc(0.95,trainData,trainDataR );
    [ nn,nsizes ]=getNNTrainSizesSubtAndSizes(mytr);
    arr95(1,:)=arr95(1,:)+[nn 0 0];
    arr95(2,:)=arr95(2,:)+nsizes;
    
    
end
arr95=arr95/10;
arr80=arr80/10;
arr65=arr65/10;
