%   rng(450)
%   rng(300)
acc=0;
 while(acc <0.90)
net= patternnet([20 30 50]);
% net.divideParam.trainRatio=75/100;
% net.divideParam.valRatio=5/100;
% net.divideParam.testRatio=20/100;
%  net.trainParam.showWindow = false;
 [net,tr]= train(net,trainData',trainDataR');

 y=net(trainData');
% plotoncfusion(trainDataR',y)
% [c,cm,ind,per] =confusion(trainDataR',y);
% figure; plotconfusion(TDRT(:,tr.testInd),net(trainData(tr.testInd,:)'));
TDRT=trainDataR';
% Test Confusion
acc=1-confusion(TDRT(:,tr.testInd),net(trainData(tr.testInd,:)'));
% disp(per);
 end;