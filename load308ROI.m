if exist('CNROI','var')==0 && exist('NNROI','var')==0
CNROI=loadImgsMain( 'PartionedDataset\LungCN\All\',154,'All_CD.xlsx');
NNROI=loadImgsMain( 'PartionedDataset\LungNN\',93,'Malignant_CD.xlsx');

% Rest to complete 154 non-nodules
imgs=loadImgsPathNum('PartionedDataset\LungNN\',61);
imgs=fliplr(imgs);
[~,nLoc] = loadClincData( 'PartionedDataset\LungNN\','Malignant_CD.xlsx' );
ROI= getROI( imgs, nLoc );
NNROI=[NNROI ROI];
clear imgs nLoc ROI;
end