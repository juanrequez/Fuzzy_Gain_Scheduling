%close all

%graficar lazo abierto
%obtener el vector de tiempo
time=closeloop_X2.time;

%extraer los valores de las estructuras
L2=closeloop_L2.signals(1,:).values;
X2=closeloop_X2.signals(1,:).values;
P2=closeloop_P2.signals(1,:).values;

figure
plot(time,L2(:,1),'k',time,L2(:,2),'k-o');
%title('L2');
xlabel('tiempo, min');
ylabel('nivel normalizado');
grid
legend('Planificacion de ganancias P','P','location','best');

figure
plot(time,X2(:,1),'k',time,X2(:,2),'k-o');
%title('X2');
xlabel('tiempo, min');
ylabel('concentración normalizada');
grid
legend('Planificacion de ganancias PI','PI','location','best');

figure
plot(time,P2(:,1),'k',time,P2(:,2),'k-o');
%title('P2');
xlabel('tiempo, min');
ylabel('presion normalizada');
grid
legend('Planificacion de ganancias PI','PI','location','best');

