
A = 0.5139
n = 10; 
X_m_range = 1:3; 
x_range = 6:1:10; 


A_mesh = zeros(length(x_range), length(X_m_range));


for i = 1:length(x_range)
    for j = 1:length(X_m_range)
        x = x_range(i);
        X_m = X_m_range(j);  
        A_m = 1 - (1 - A) ^ X_m;
        temp_sum = 0;
        for k = 0:x
            temp_sum = temp_sum + nchoosek(n, k) * A_m ^ k * (1 - A_m) ^ (n - k);
        end
        A_mesh(i, j) = temp_sum;
    end
end


[X, Y] = meshgrid(X_m_range, x_range);
figure
surf(X, Y, A_mesh);
xlabel('Number of IIoT nodes in a subnet','Rotation',15,'Position',[-0.5 -1 1.1],'FontSize',12)
ylabel('Operational nodes in mesh network','Rotation',-24,'Position',[0.5,7,0.1],'FontSize',12)
zlabel('Availability','FontSize',12)
