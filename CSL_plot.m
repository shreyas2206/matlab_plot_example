clear all;
close all;
clc;

%% Download export_fig from https://in.mathworks.com/matlabcentral/fileexchange/23629-export_fig
%% Add the path of the extracted package.
addpath('/usr/bin/MATLAB2018b/toolbox/altmany-export_fig-412662f');


%% The following code plots a bar graph as in the paper https://authors.elsevier.com/a/1a2Z439HpSXrrS
a3 = [47.98	47.98	51.58;44.37	44.42	47.78;46.04	45.12	49.2;46.00	46	50.5;47.98	47.65	52.5;50.38	49.09	53.91;51.44	50.32	55.3;53.4	52.35	56.75];
a10 = [23.83	23.83	26.85;20.06	20.58	23.1;19.54	19.77	22.44;19.81	20.36	22.93;19.72	20.19	23.81;19.93	20.4	25.25;20.27	20.72	26.03;22.35	21.58	27.03];
a30 = [13	13	13.13;12.03	12.01	12.22;12.06	12.04	12.11;11.68	12.18	12.23;12.15	12.32	12.9;12.56	12.58	12.47;13.24	12.45	12.58;13.67	12.52	12.99];

figure;
hold on;
b3 = bar([a3(1:5,1),a10(1:5,1),a30(1:5,1)],'BarWidth',1);
ylim([0,60]);
yticks([0:10:60]);
c1 = ["1","3","5","7","10"];
set(gca, 'XTickLabel',c1, 'XTick',1:numel(c1),'FontSize', 12, 'TickLabelInterpreter','latex');

%% RGB Values used for colours
plot(xlim,[52.69 52.69],'LineStyle','--','LineWidth',2,'Color',[0,0.447,0.741]);
plot(xlim,[27.08 27.08],'LineStyle','-.','LineWidth',2,'Color',[0.85,0.325,0.098]);
plot(xlim,[13.12 13.12],'LineStyle',':','LineWidth',2,'Color',[0.929,0.694,0.125]);
scatter(1.77,44.37-1,40,'*','LineWidth',1,'CData',[0,0.447,0.741],'MarkerFaceColor',[0,0.447,0.741],'MarkerEdgeColor',[1 1 1]);
scatter(3,19.54-1,40,'*','LineWidth',1,'CData',[0.85,0.325,0.098],'MarkerFaceColor',[0.85,0.325,0.098],'MarkerEdgeColor',[1 1 1]);
scatter(4.23,11.68-1,40,'*','LineWidth',1,'CData',[0.929,0.694,0.125],'MarkerFaceColor',[0.929,0.694,0.125],'MarkerEdgeColor',[1 1 1]);

%% Vary inner and outer positions to change size of plot as you wish
set(gcf, 'InnerPosition', [680,450,700,500]);
set(gcf, 'OuterPosition', [680,450,700,585]);

%% Latex interpreter used everywhere
xlabel('$\lambda$','FontSize', 12,'Interpreter', 'latex'); ylabel('$100 C_{primary}$','FontSize', 12,'Interpreter', 'latex')
lgd = legend('s-vector (3 sec)','s-vector (10 sec)','s-vector (30 sec)','i-vector (3 sec)','i-vector (10 sec)','i-vector (30 sec)');
lgd.FontSize = 12;
lgd.Location = 'NorthOutside';
lgd.Orientation = 'horizontal';
lgd.NumColumns = 3;
lgd.Interpreter = 'latex';
lgd.Box = 'Off';

%% Save as pdf wih transparent background
export_fig /home/shreyasr/Pictures/svm_Cavg_vs_lambda_v5 -pdf -transparent