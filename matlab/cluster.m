syms i j u N Y
u = 0.5139;
N_values = [2, 4, 6];
Y_values = [2, 4, 6];
f = 1 - symprod(1-(1-symprod(1-u,i,1,N))*u,j,1,Y);
results = zeros(length(N_values), length(Y_values));

for n = 1:length(N_values)
    for y = 1:length(Y_values)
        N = N_values(n);
        Y = Y_values(y);
        results(n, y) = double(subs(f));
    end
end

figure
[X,Y] = meshgrid(N_values, Y_values);
surf(X,Y,results)


xlabel('Number of IIoT nodes in a cluster','Rotation',17,'Position',[4 1 0.6])
ylabel('Number of routes','Rotation',-23,'Position',[0.5 1 0.7])
zlabel('Availability')