% close all, clear all, clc
% 
% figure, hold on, axis([0 1 0 1]), axis square, grid on
% set(gca,'FontName','Candara','FontSize',14)
% last = [];
% while ~waitforbuttonpress
% point = get(gca,'CurrentPoint');
% if isempty(last), last = point; end
% plot([last(1,1) point(1,1)],[last(1,2) point(1,2)],'k.-')
% 
% last = point;
% 
% end



clear all
close all
clc
figure('color','k')
axes('Position',[0 0 1 1]), hold on
axis([-1 2 -1 2],'off')
for i = 1:15
pl = ginput(1);
fill(pl(1)+rand(1,3)-0.5,pl(2)+rand(1,3)-0.5,...
rand(1,3),'EdgeColor','w')
end