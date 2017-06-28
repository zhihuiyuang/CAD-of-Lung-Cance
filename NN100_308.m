
net2= patternnet(100);
net2.divideFcn = 'divideind';
if exist('TR100_308','var')==0
load('TR100_308');
end

% Training indices:
net2.divideParam.trainInd=TR100_308.trainInd;
% Validation indices:
net2.divideParam.valInd=TR100_308.valInd;
% Testing indicies:
net2.divideParam.testInd=TR100_308.testInd;
rng(600);
[net2,tr]= train(net2,trainData',trainDataR');