function [ tr ] = getNNWithAcc( reqAcc,trainData,trainDataR )
%getNNWithAcc find a network with the required accuracy
acc=0;
    net= patternnet(100);
    net.trainParam.showWindow = false;
    [~,tr]= train(net,trainData',trainDataR');   
while(acc <=reqAcc-0.02 || acc >=reqAcc+0.02)
    net= patternnet(100);
    net.trainParam.showWindow = false;
    [net,tr]= train(net,trainData',trainDataR');   
    TDRT=trainDataR';
    % model accuracy
    acc=1-confusion(TDRT(:,tr.testInd),net(trainData(tr.testInd,:)'));
    % disp(per);
end;

end

