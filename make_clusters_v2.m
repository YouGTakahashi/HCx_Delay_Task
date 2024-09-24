%NAME: make_clusters_v2;
%For Figure 2a;

close all
clear all

load Clusters.mat

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ctrl_one = Ctrl(1:72,:);
Ctrl_two = Ctrl(73:238,:);
Ctrl_three = Ctrl(239:390,:);

HCx_one = HCx(1:117,:);
HCx_two = HCx(118:289,:);
HCx_three = HCx(290:510,:);

Ctrl_rew = Ctrl_one(1:44,:); 
HCx_rew = HCx_one(1:66,:); 

figure1 = figure %Ctrl
axes1 = axes('XTick',[-0.2 0 0.2 0.4 0.6 0.8 1],'YTick',[0 0.2 0.4 0.6 0.8],...
  'Parent',figure1);
axis(axes1,[-0.2 1 0 0.9]);
hold(axes1,'all');
scatter(Ctrl_one(:,1), Ctrl_one(:,2),'MarkerEdgeColor',[0 0 0],'MarkerFaceColor',[0.5 0.5 0.5]);hold on;
scatter(Ctrl_two(:,1), Ctrl_two(:,2),'MarkerEdgeColor',[0 0 0]); hold on;
scatter(Ctrl_three(:,1), Ctrl_three(:,2),'MarkerEdgeColor',[0 0 0]); hold on;
scatter(Ctrl_rew(:,1),Ctrl_rew(:,2),'MarkerEdgeColor',[0 0 0],'MarkerFaceColor',[0 0 0]);hold on;
axis square;

figure2 = figure %HCx
axes1 = axes('XTick',[-0.2 0 0.2 0.4 0.6 0.8 1],'YTick',[0 0.2 0.4 0.6 0.8],...
  'Parent',figure2);
axis(axes1,[-0.2 1 0 0.9]);
hold(axes1,'all');
scatter(HCx_one(:,1), HCx_one(:,2),'MarkerEdgeColor',[0 0 0],'MarkerFaceColor',[0.5 0.5 0.5]);hold on;
scatter(HCx_two(:,1), HCx_two(:,2),'MarkerEdgeColor',[0 0 0]); hold on;
scatter(HCx_three(:,1), HCx_three(:,2),'MarkerEdgeColor',[0 0 0]); hold on;
scatter(HCx_rew(:,1),HCx_rew(:,2),'MarkerEdgeColor',[0 0 0],'MarkerFaceColor',[0 0 0]);hold on;
axis square;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ctrl_amp_avg = mean(Ctrl_one(:,1));
HCx_amp_avg = mean(HCx_one(:,1));
Ctrl_dur_avg = mean(Ctrl_one(:,2));
HCx_dur_avg = mean(HCx_one(:,2));

Ctrl_amp_sem = std(Ctrl_one(:,1))/sqrt(length(Ctrl_one(:,1)));
HCx_amp_sem = std(HCx_one(:,1))/sqrt(length(HCx_one(:,1)));
Ctrl_dur_sem = std(Ctrl_one(:,2))/sqrt(length(Ctrl_one(:,2)));
HCx_dur_sem = std(HCx_one(:,2))/sqrt(length(HCx_one(:,2)));

%amplitude ratio;
figure3 = figure;
axes1 = axes('YTick',[0 0.05 0.1 0.15 0.2 0.25],'Parent',figure3);
xlim(axes1,[0.4 2.6]);
xlabel(axes1,'Amp ratio');
hold(axes1,'all');

bar(1,Ctrl_amp_avg,'FaceColor',[0 0 0]); hold on;
bar(2,HCx_amp_avg,'FaceColor',[.5 .5 .5]); hold on;
errorbar(1,Ctrl_amp_avg,Ctrl_amp_sem,'Color',[0 0 0],'LineStyle','none');hold on;
errorbar(2,HCx_amp_avg,HCx_amp_sem,'Color',[0 0 0],'LineStyle','none');hold on;

%half duration;
figure4 = figure;
axes1 = axes('YAxisLocation','right','YTick',[0 0.2 0.4 0.6],'Parent',figure4);
xlim(axes1,[0.4 2.6]);
xlabel(axes1,'Half dur');
hold(axes1,'all');

bar(1,Ctrl_dur_avg,'FaceColor',[0 0 0]); hold on;
bar(2,HCx_dur_avg,'FaceColor',[.5 .5 .5]); hold on;
errorbar(1,Ctrl_dur_avg,Ctrl_amp_sem,'Color',[0 0 0],'LineStyle','none');hold on;
errorbar(2,HCx_dur_avg,HCx_amp_sem,'Color',[0 0 0],'LineStyle','none');hold on;
