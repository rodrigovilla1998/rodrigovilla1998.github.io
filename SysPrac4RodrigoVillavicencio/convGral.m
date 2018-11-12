function convGral(x,h)
  figure % Se crea una figura para hacer las gr�ficas
  c=Comienza(x,h);
  f=Finaliza(x,h);
  dtau = 0.005; % Base de los rectangulos para realizar la integral 
  tau = (c-2):dtau:(f+2); % Intervalo de visualizaci�n del resultado
  ti = 0; % Indice para el vector de resultados
  
  pv=PrimerValor(h);
  longitudFuncion=PrimerValor(h)-UltimoValor(h);
  longitudFuncion=abs(longitudFuncion);
  uv=UltimoValor(h);
  
  tvec = (pv-3):.1:(uv+longitudFuncion+3); % traslaciones de t, cuantas integrales se calulan  
  y = NaN*zeros(1, length (tvec)); % Resultados de acuerdo a cuantos t
  limSup = 2.5; %Para mover la grafica
  limInf = -1.0;

  for t = tvec, % Cantidad de traslaciones
      ti = ti+1; % Indice para guardar el resultado (indice del tiempo)
      xh = x(t-tau).*h(tau); % resultado de la multiplicaci�n 
      lxh = length(xh); % longitud del resultado
      y(ti) = sum(xh.*dtau); % Base por altura, aproximaci�n de la integral
      subplot (2,1,1), % gr�fica de 2 x 1 (primera)
      
      plot(tau, h(tau), 'r-', tau, x(t-tau), 'g--', t, 0, 'ob'); %graficas 
      %disp(y(ti));
      
      axis ([tau(1) tau(end) -2.0 2.5]); % l�mites de los ejes

      patch([tau(1:end-1); tau(1:end-1); tau(2:end); tau(2:end)],...
      [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
      [.8 .8 .8], 'edgecolor', 'none');
      xlabel('\tau'); % Texto del eje X
      legend('h(\tau)', 'x(t-\tau)','t','h(\tau)x(t-\tau)')% Caja de Texto  
      subplot (2, 1, 2)  % gr�fica de 2 x 1 (segunda)
      plot (tvec, y, 'k', tvec (ti), y(ti), 'ok');
      xlabel ('t'); 
      ylabel ('y(t) = \int h(\tau)x(t-\tau) d\tau');
      
      if(y(ti) > limSup)
          limSup = y(ti);
      end
      
      if(y(ti) < limInf)
          limInf = y(ti);
      end
      axis ([tau(1) tau(end) limInf limSup]); % l�mites del eje
      grid; % malla
      drawnow; % efecto de movimiento continuo
  end
end