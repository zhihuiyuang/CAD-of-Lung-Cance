function [ ROI ] = loadImgsMain( path,noI,filename )
%Read images and get ROI from clinical data file
%   Detailed explanation goes here
imgs=loadImgsPathNum(path,noI);
[~,nLoc] = loadClincData( path,filename );
ROI= getROI( imgs, nLoc );
end

