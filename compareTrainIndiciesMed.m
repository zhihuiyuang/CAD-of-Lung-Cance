arr95Nk= [];
arr95Sk= [];
arr80Nk = [];
arr80Sk = [];
arr65Nk = [];
arr65Sk = [];
for i=1:10
    
    mytr=getNNWithAcc(0.65,trainData,trainDataR );
    [ nn,nsizes ]=getNNTrainSizesSubtAndSizes(mytr);
    arr65Nk=[arr65Nk; nn];
    arr65Sk=[arr65Sk; nsizes];
    
    mytr=getNNWithAcc(0.80,trainData,trainDataR );
    [ nn,nsizes ]=getNNTrainSizesSubtAndSizes(mytr);
    arr80Nk=[arr80Nk; nn];
    arr80Sk=[arr80Sk; nsizes];
    
    
    mytr=getNNWithAcc(0.95,trainData,trainDataR );
    [ nn,nsizes ]=getNNTrainSizesSubtAndSizes(mytr);
    arr95Nk=[arr95Nk; nn];
    arr95Sk=[arr95Sk; nsizes];
    
    
end


% arr95N=std(arr95N);
% arr80N=std(arr80N);
% arr65N=std(arr65N);
% arr95S=std(arr95S);
% arr80S=std(arr80S);
% arr65S=std(arr65S);