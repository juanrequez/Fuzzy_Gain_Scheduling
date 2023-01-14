close all

%KIL2
A=0.015;
funcionA={['pertTRIANG'] ['pertTRIANG'] ['pertTRIANG'] ['pertTRIANG'] ['pertTRIANG']};
parametrosA={A*[-3 -2 -1] A*[-2 -1 -0] A*[-1 0 1] A*[0 1 2] A*[1 2 3]};

na=length(funcionA);%numero de subconjuntos de A


figure
hold
for i=1:na
    graficador(funcionA{i},parametrosA{i},[-3*A,3*A])
end
axis([-3*A 3*A 0 1.2]);
text(-2*A,1.1,'MN');
text(-1*A,1.1,'N');
text(0,1.1,'C');
text(1*A,1.1,'P');
text(2*A,1.1,'MP');
grid
xlabel('error')
ylabel('pertenencia')


x=linspace(-3*A,3*A,100);

for i=1:length(x)
        ws(i)=KIGSP2_takagisugeno(x(i));
    
end
figure
plot(x,ws,'k-*')
xlabel('error')
ylabel('KI')
grid
legend('KI','location','best')

%KPL2
A=0.033;
funcionA={['pertTRIANG'] ['pertTRIANG'] ['pertTRIANG'] ['pertTRIANG'] ['pertTRIANG']};
parametrosA={A*[-3 -2 -1] A*[-2 -1 -0] A*[-1 0 1] A*[0 1 2] A*[1 2 3]};

na=length(funcionA);%numero de subconjuntos de A


figure
hold
for i=1:na
    graficador(funcionA{i},parametrosA{i},[-3*A,3*A])
end
axis([-3*A 3*A 0 1.2]);
text(-2*A,1.1,'MN');
text(-1*A,1.1,'N');
text(0,1.1,'C');
text(1*A,1.1,'P');
text(2*A,1.1,'MP');
grid
xlabel('error')
ylabel('pertenencia')


x=linspace(-3*A,3*A,100);

for i=1:length(x)
        ws(i)=KPGSP2_takagisugeno(x(i));
    
end
figure
plot(x,ws,'k-*')
xlabel('error')
ylabel('KP')
grid
legend('KP','location','best')

