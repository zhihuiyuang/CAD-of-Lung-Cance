l=fitcsvm(trainData,trainDataR,'Standardize',1);%SVM
loss=resubLoss(l);
cv=crossval (l,'KFold',30);
cvloss= kfoldLoss(cv, 'LossFun', 'ClassifError');