

[e,~]=loadClincData('C:\Users\Yasser\Desktop\Data\DataSet\PartionedData\LungCN\All\','All_CD.xlsx');
li=find(mytr.trainInd<=154,1,'last');
eTrain=e(mytr.trainInd(1:li),:);
ids=[eTrain{:,2}];
nn=[];for i=1:5;nn=[nn sum(ids==i)];end;
figure;
subplot(1,2,1);
bar(nn);
title('Subtelty');
xlabel('Subtelty Level');
ylabel('Number of Samples');
nsizes=[eTrain{:,3}];
subplot(1,2,2);
hist(nsizes,5:5:60);
title('Nodule Size');
xlabel('Size of Nodule (mm)');
ylabel('Number of Samples');
set(gca,'xlim',[4.5 60.5]);


% diagrams for all data
%  [e,~]=loadClincData('C:\Users\Yasser\Desktop\Data\DataSet\PartionedData\LungCN\All\','All_CD.xlsx');
% nsizes=[e{:,3}];
% hist(nsizes);
% hist(nsizes,5:5:60);
% ids=[e{:,2}];
% nn=[];for i=1:5;nn=[nn sum(ids==i)];end;
% bar(nn);