function [ imgs ] = loadImgsPathNum( path,numImgs )
%READIMGS read images LN & NN of JSRT
disp('Reading images...')
imgs = cell(1,numImgs);
for i = 1:numImgs
    filename = [path num2str(i,'%03d') '.IMG'];
    fid=fopen(filename,'r','b');
    currentimage = fread(fid, [2048 2048], '*uint16','b');
    %rotate matrix 270 deg
    currentimage=rot90(currentimage,3);
    %flip matrix
    currentimage=flip(currentimage ,2);
    %median filter
    currentimage = medfilt2(currentimage);
    
%       currentimage = HFEF( currentimage );

    % do something with img
    imgs{i} = currentimage;
    fclose(fid);
end
disp('Done reading images')
end

