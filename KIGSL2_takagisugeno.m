function z=KIGSL2_takagisugeno(x)
%esta función usa sugeno
%deben modificarse los tipos de función y las reglas para establecer la
%lógica
%x entrada del universo de discurso


%% subconjuntos difusos (seccion modificable)
%conjunto A
%compuesto por cinco funciones de pertenencia
A=0.33;
funcionA={['pertTRIANG'] ['pertTRIANG'] ['pertTRIANG'] ['pertTRIANG'] ['pertTRIANG']};
parametrosA={A*[-3 -2 -1] A*[-2 -1 -0] A*[-1 0 1] A*[0 1 2] A*[1 2 3]};



%% reglas (sección modificable
%si x pertenece a subconjuntoA y Y pertenece a subconjuntoB entonces
%Subconjunto C se traduce como
%regla(i)=[numero_subconjuntoA numero_subconjuntoB numero_subconjuntoC]
signo=-1;
M=1;
G=2*M*signo;P=1*M*signo;C=0*M*signo;
regla=[];
regla(1,:)=[5 C];
regla(2,:)=[4 P];
regla(3,:)=[3 G];
regla(4,:)=[2 P];
regla(5,:)=[1 C];


%% PARAMETROS A partir de aqui, nada es modificable
na=length(funcionA);%numero de subconjuntos de A
nr=size(regla,1); %numero de reglas

%% PASO 1: Calcular las pertenencias de X y Y a A y B (no modificar)

%calcular la pertenencia de X a cada subconjunto de A
for i=1:na
    miuA(i)=pertenencia(x,funcionA{i},parametrosA{i});
end

%% PASO 2 Aplicar las reglas difusas (no modificar)

%prod intersección
for i=1:nr
    subconjA=regla(i,1);
    w(i)=miuA(subconjA); %antecedente
    Z(i)=regla(i,2); %consecuente
end

%% calcular la salida (no modificar)
if sum(w)==0
    z=0;
else
    z=(w*Z')/sum(w);
end

    
