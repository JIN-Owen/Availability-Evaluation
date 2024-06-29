
p = 0.5139; 
x = 0:30; 

y1 = binocdf(x, 20, p); 
y2 = binocdf(x, 25, p); 
y3 = binocdf(x, 30, p); 


figure
plot(x, y1, 'o-', x, y2, 'x-', x, y3, 's-')
xlabel('Number of nodes in normal operation')
ylabel('Availability')
legend('n=20', 'n=25', 'n=30')
grid on