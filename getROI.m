function [ ROI ] = getROI( lungImg, nLoc )
%getROI get the 128 x 128 ROI around the nLoc
ROI = cell(1,size(lungImg,2));
for i=1:size(lungImg,2)
    % x(nLoc{1,2},nLoc{1,1})=773 ;
      rect = [nLoc{i,1}-64,nLoc{i,2}-64,127,127];
%      rect = [nLoc{i,1}-32,nLoc{i,2}-32,64,64];
    ROI{i} = imcrop (lungImg{i}, rect);
end

end

