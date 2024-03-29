%METODOS NO LINEALES
%FUNCIONES Y SUS DERIVADAS
f = 'x-2^(-x)';
fd1 = '2^(-x)*log(2)+1';
fd2 = '-2^(-x)*(log(2))^2';


g = '(2.7183)^(-x) - x^(2) + 3*x-2';
gd1 = '-2.7183^(-x) - 2*x + 3';
gd2 = '2.7183^(-x) - 2';

h = 'x^3 - 7*x^2 + 14*sin(2*3.1415*x) - 6';
hd1 = 'x*(3*x - 14) + 87.962*cos(2*3.1415*x)';
hd2 =  '6*x - 14 - 552.665*sin(2*3.1415*x)';

%TOLERANCIA
toleranciaNL = 10^-15;

%INTERVALOS
af = 0;
bf = 1; 
ag = 0; 
bg = 1;
ah = 0; 
bh = 0.3;


%ITERACIONES
iteraciones = 100;

%CALCULO DE X INICIALES
xInicialF = reglaFourier(f,fd1,fd2,af,bf);
xInicialG = reglaFourier(g,gd1,gd2,ag,bg);
xInicialH = reglaFourier(h,hd1,hd2,ah,bh);

% %ECUACIÓN 1: x-2^(-x)
% [eBiF,vXBiF,tBiF,iBiF] = biseccion(f,af,bf,toleranciaNL,iteraciones);
% [eNeF,vXNeF,tNeF,iNeF] = newton(f,fd1,xInicialF,iteraciones,toleranciaNL);
% [eSeF,vXSeF,tSeF,iSeF] = secante(af,bf,iteraciones,f,toleranciaNL);
% [eReF,vXReF,tReF,iReF] = regulaFalsi(af,bf,toleranciaNL,f);
% graficarValores('F(x)',vXBiF,vXSeF,vXReF,vXNeF)
% graficarErrores('F(x)',eBiF,eSeF,eReF,eNeF)


% %ECUACION 2: (2.7183)^(-x) - x^(2) + 3*x-2 
% [eBiG,vXBiG,tBiG,iBiG] = biseccion(g,ag,bg,toleranciaNL,iteraciones);
% [eNeG,vXNeG,tNeG,iNeG] = newton(g,gd1,xInicialG,iteraciones,toleranciaNL);
% [eSeG,vXSeG,tSeG,iSeG] = secante(ag,bg,iteraciones,g,toleranciaNL);
% [eReG,vXReG,tReG,iReG] = regulaFalsi(ag,bg,toleranciaNL,g);
% graficarValores('G(x)',vXBiG,vXSeG,vXReG,vXNeG)
% graficarErrores('G(x)',eBiG,eSeG,eReG,eNeG)
% 
%ECUACION 3: x^3 − 7*x^2 + 14*sin(2*3.1415*x) − 6
[eBiH,vXBiH,tBiH,iBiH] = biseccion(h,ah,bh,toleranciaNL,iteraciones);
[eNeH,vXNeH,tNeH,iNeH] = newton(h,hd1,xInicialH,iteraciones,toleranciaNL);
[eSeH,vXSeH,tSeH,iSeH] = secante(ah,bh,iteraciones,h,toleranciaNL);
[eReH,vXReH,tReH,iReH] = regulaFalsi(ah,bh,toleranciaNL,h);
graficarValores('H(x)',vXBiH,vXSeH,vXReH,vXNeH)
graficarErrores('H(x)',eBiH,eSeH,eReH,eNeH)


% save('data/ec1.mat','xInicialF','eBiF','vXBiF','tBiF','iBiF','eNeF','vXNeF','tNeF','iNeF','eSeF','vXSeF','tSeF','iSeF','eReF','vXReF','tReF','iReF');
% save('data/ec2.mat','xInicialG','eBiG','vXBiG','tBiG','iBiG','eNeG','vXNeG','tNeG','iNeG','eSeG','vXSeG','tSeG','iSeG','eReG','vXReG','tReG','iReG');
% save('data/ec3.mat','xInicialH','eBiH','vXBiH','tBiH','iBiH','eNeH','vXNeH','tNeH','iNeH','eSeH','vXSeH','tSeH','iSeH','eReH','vXReH','tReH','iReH');


