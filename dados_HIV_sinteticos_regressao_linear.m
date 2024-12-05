% Codigo geracao de dados para artigo de ajuste de curvas fuzzy
% Ana Luz, Leticia Nunes, Yasmin Shimizu, Vinicius Wasques
% Ilum Escola de Ciência
% Centro Nacional de Pesquisa em Energia e Materias
% ============     REGRESSAO LINEAR    =========================

clc
clear all
close all

x = linspace(1,15,15); %discretizacao do dominio
yM = [4590;5071;5742;6961;8731;9870;13937;21583;27515;29756;32757;33059;31413;24061;11314]; % dados HIV homens
yF = [3282;3546;3688;4138;4558;5226;7134;10037;11860;12171;12664;12626;11879;8626;3898]; % dados HIV mulheres
yT = yM+yF; % dados HIV total 

figure
plot(x,yM,'*')

figure
plot(x,yF,'*')

figure
plot(x,yT,'*')

g1 = @(x) 1; %funcoes de base regressao linear
g2 = @(x) x; %funcoes de base regressao linear

G = zeros(2,2); %matriz das funcoes de base
F = zeros(2,1); %vetor de resposta dos dados

% Criacao de dados para HIV homens =======================================
s1 = 0;
s2 = 0;
s3 = 0;
s4 = 0;
f1 = 0;
f2 = 0;
for i=1:length(x)
  s1 = s1 + g1(x(i))*g1(x(i));
  s2 = s2 + g1(x(i))*g2(x(i));
  s3 = s3 + g2(x(i))*g1(x(i));
  s4 = s4 + g2(x(i))*g2(x(i));
  f1 = f1 + g1(x(i))*yM(i);
  f2 = f2 + g2(x(i))*yM(i);
end

G(1,1) = s1;
G(1,2) = s2;
G(2,1) = s3;
G(2,2) = s4;

F(1,1) = f1;
F(2,1) = f2;

alfa = G\F;

p = @(x) alfa(1)*g1(x)+alfa(2)*g2(x);

D = zeros(length(x),1);

for i=1:length(x)
   D(i,1) = abs(p(x(i))-yM(i));    
end

YM = zeros(length(x),3);

for i=1:length(x)
    YM(i,1) = yM(i)-D(i,1);
    YM(i,2) = yM(i);
    YM(i,3) = yM(i)+D(i,1);
end

YM

figure
hold on
plot(x,yM,'*')
plot(x,p(x),'k')
hold off

% Criacao de dados para HIV mulheres =====================================
s1 = 0;
s2 = 0;
s3 = 0;
s4 = 0;
f1 = 0;
f2 = 0;
for i=1:length(x)
  s1 = s1 + g1(x(i))*g1(x(i));
  s2 = s2 + g1(x(i))*g2(x(i));
  s3 = s3 + g2(x(i))*g1(x(i));
  s4 = s4 + g2(x(i))*g2(x(i));
  f1 = f1 + g1(x(i))*yF(i);
  f2 = f2 + g2(x(i))*yF(i);
end

G(1,1) = s1;
G(1,2) = s2;
G(2,1) = s3;
G(2,2) = s4;

F(1,1) = f1;
F(2,1) = f2;

alfa = G\F;

p = @(x) alfa(1)*g1(x)+alfa(2)*g2(x);

D = zeros(length(x),1);

for i=1:length(x)
   D(i,1) = abs(p(x(i))-yF(i));    
end

YF = zeros(length(x),3);

for i=1:length(x)
    YF(i,1) = yF(i)-D(i,1);
    YF(i,2) = yF(i);
    YF(i,3) = yF(i)+D(i,1);
end

YF

figure
hold on
plot(x,yF,'*')
plot(x,p(x),'k')
hold off

% Criacao de dados para HIV total =======================================
s1 = 0;
s2 = 0;
s3 = 0;
s4 = 0;
f1 = 0;
f2 = 0;
for i=1:length(x)
  s1 = s1 + g1(x(i))*g1(x(i));
  s2 = s2 + g1(x(i))*g2(x(i));
  s3 = s3 + g2(x(i))*g1(x(i));
  s4 = s4 + g2(x(i))*g2(x(i));
  f1 = f1 + g1(x(i))*yT(i);
  f2 = f2 + g2(x(i))*yT(i);
end

G(1,1) = s1;
G(1,2) = s2;
G(2,1) = s3;
G(2,2) = s4;

F(1,1) = f1;
F(2,1) = f2;

alfa = G\F;

p = @(x) alfa(1)*g1(x)+alfa(2)*g2(x);

D = zeros(length(x),1);

for i=1:length(x)
   D(i,1) = abs(p(x(i))-yT(i));    
end

YT = zeros(length(x),3);

for i=1:length(x)
    YT(i,1) = yT(i)-D(i,1);
    YT(i,2) = yT(i);
    YT(i,3) = yT(i)+D(i,1);
end

YT

figure
hold on
plot(x,yT,'*')
plot(x,p(x),'k')
hold off
