function [ markedImgs ] = markNodLocs( ln, nLoc )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
markedImgs = cell(1,154);
for i=1:154
    % x(nLoc{1,2},nLoc{1,1})=773 ;
    pos = [nLoc{i,1},nLoc{i,2}];
    markedImgs{i}=insertMarker(mat2gray(ln{i}, [0,4096]),pos,'size',20);
end

end
