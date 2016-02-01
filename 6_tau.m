eps = 1.000;
n = 20;
l = (2*eps - 1/n)/(2*eps + 1/n)

z = [1 2 3 4]

for i = 20:1000
	x(i) =i;
end 
y = x;
a = 0.854/400
b = 2.146-a*100

c = a*100 + b

fig = figure('visible', 'on');
								%position', [0, 0, 10, 10]);
set (fig, 'papersize', [10. 10.]);
set (fig, 'paperposition', [10. 0. 10. 10]);
%set(fig, 'PaperPositionMode','auto');
set (fig, 'Paperunits', 'centimeters');

plot (x, sqrt(log (x)), '-k', 'LineWidth',2);
hold on;
plot (x, a*x + b, '--m', 'LineWidth',2);
for i = 2:7
	hold on;
	plot([1 (((1/8)*i + 2-b)/a) (((1/8)*i + 2-b)/a)], [((1/8)*i + 2) ((1/8)*i + 2) 1],  '--r', 'LineWidth',2);
end

plot([1 100 100], [c c 1],  '--b', 'LineWidth',2);

for i = -2:1
	hold on;
	plot([1 exp((((1/8)*i + 2))**2) exp((((1/8)*i + 2))**2) ], [((1/8)*i + 2) ((1/8)*i + 2) 1], '-g', 'LineWidth',2)
end

axis([e 500 1 3])
xlabel("x","fontweight","bold")
ylabel("t","fontweight","bold")
%plot (x, (1 - e.^(- x/eps))/(1 - e^(- 1/eps)) - x);
set(gca,'xtick',[])
set(gca,'ytick',[])
%legend('$N^{-1}$', '$N^{-1}\cdot \ln N$');
## eps = 0.15;
## l = (2*eps - 1/n)/(2*eps + 1/n)
## 	hold on;
## plot (x, (1 - e.^(- x/eps))/(1 - e^(- 1/eps)) - x);

print (fig,'6_tau.png');

