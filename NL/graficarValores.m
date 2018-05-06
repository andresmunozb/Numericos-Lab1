function graficarValores(name,biseccion,secante,regula, newton)
%CREATEFIGURE(Y1)
%  Y1:  vector of y data

%  Auto-generated by MATLAB on 05-May-2018 17:50:08

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
box(axes1,'on');
hold(axes1,'on');
hold on;

% Create xlabel
plot([biseccion],'-k.','MarkerSize',5,'MarkerFaceColor','b'); 
plot([secante],'-*r','MarkerSize',5,'MarkerFaceColor','r');
plot([regula],'-+b','MarkerSize',5,'MarkerFaceColor','g'); 
plot([newton],'-og','MarkerSize',5,'MarkerFaceColor','g'); 
title(strcat('Raices de: ',name));
ylabel('Raíces'); % y-axis label
xlabel('Iteraciones'); % x-axis label
legend('Bisección','Secante','Regula-Falsi','Newton-Raphson');



end