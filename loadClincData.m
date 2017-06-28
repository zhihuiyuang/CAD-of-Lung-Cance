function [ everthing,nLoc  ] = loadClincData( path,filename )
%readClinData Read the clinical data from the file
filename = [path filename];
[~, ~,everthing]  = xlsread(filename);
nLoc = everthing(: , 6:7);
end

