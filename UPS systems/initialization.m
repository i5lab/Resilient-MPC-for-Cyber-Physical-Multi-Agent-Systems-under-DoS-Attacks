
%%%%%%%%parameters%%%%%%%%%%%


% % clc
% % clear
% % delta=0.1;
% % Ts=0.1;
% % A=[.9226 -.6330 0;1 0 0;0 1 0];
% % B=[1;0;0];
% % C=[1 0.2 0.6;0.5 0.6 1.2;0.5 0.9 1.5];
% % O=[];
% % Np=4;
% % for i=1:Np
% %     O=[O;(C*A^(i-1))'];
% % end
% % FF=[];
% % SS=[];
% % FFF=[];
% % SSS=[];
% % for i=1:Np-1
% %     FF=[];
% %     for j=1:Np*length(C*A*B)
% %         if(i>=j)
% %             f=C*A^(i-j)*B;
% %             FF=[FF,f];
% %         else
% %             f=zeros(3,1);
% %             FF=[FF,f];
% %         end
% %     end
% %     FFF=[FFF;FF];
% % end
% % SS=[];
% % SSS=[];
% % for i=1:Np-1
% %     SS=[];
% %     for j=1:Np
% %         if(i>=j)
% %             s=C*A^(i-j);
% %             SS=[SS,s];
% %         else
% %             s=zeros(3,3);
% %             SS=[SS,s];
% %         end
% %     end
% %     SSS=[SSS;SS];
% % end
% % %F=[zeros(3,Np*length(C*A*B));FFF];
% % %sigma=[zeros(3,Np*length(C*A));SSS];
% % F=[zeros(3,1) zeros(3,1) zeros(3,1) zeros(3,1);
% %     C*B zeros(3,1) zeros(3,1) zeros(3,1);
% %     C*A*B C*B zeros(3,1) zeros(3,1);
% %     C*A^2*B C*A*B C*B zeros(3,1)];
% % sigma=[zeros(3,3) zeros(3,3) zeros(3,3) zeros(3,3);
% %     C zeros(3,3) zeros(3,3) zeros(3,3);
% %     C*A C zeros(3,3) zeros(3,3);
% %     C*A^2 C*A C zeros(3,3)];
% % L=[];
% % % K=[1.0766 -.3101 0];
% % % Kmpc=[-.1358 -.0994 0];
% % K=[1.0766 -.3101 0];
% % c=0.1;
% % L=[ 2 0 0 0 -1; -1 2 0 0 0; -1 0 1 0 0; 0 -1 0 1 0; 0 -1 -1 -1 3];
% % % u=-c*kron(L,K)*xhat;
% % K=[1.0766 -.3101 0];
% % c=0.5;
% % A=[.9226 -.6330 0;1 0 0;0 1 0];
% % B=[1;0;0];
% % L=[ 2 0 0 0 -1; -1 2 0 0 0; -1 0 1 0 0; 0 -1 0 1 0; 0 -1 -1 -1 3];
% % A0=kron(eye(5),A);
% % B0=kron(eye(5),B);
% % z=kron(L,eye(3));
% % Q=z'*eye(15)*z;
% % %%%%%%%%%%%%qlar
% % q1=[0.8922   -0.6194         0   -0.0189    0.0085         0   -0.0366    0.0167         0 
% %    -0.0189    0.0085         0    0.8997   -0.6229         0   -0.0210    0.0097         0
% %    -0.0366    0.0167         0   -0.0210    0.0097         0    0.8361   -0.5943         0
% %    -0.0260    0.0119         0   -0.0246    0.0112         0   -0.0263    0.0125         0
% %    -0.0303    0.0138         0   -0.0241    0.0109         0   -0.0471    0.0215         0];
% % q2=[-0.0260    0.0119         0   -0.0303    0.0138         0
% %    -0.0246    0.0112         0   -0.0241    0.0109         0
% %    -0.0263    0.0125         0   -0.0471    0.0215         0
% %     0.8517   -0.6016         0   -0.0414    0.0188         0
% %    -0.0414    0.0188         0    0.8781   -0.6129         0];
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %%%%%%%%%%%%%%%%%state
% % 
% % % q1=[0.0231   -0.1987   -0.2669    0.0031    0.0178    0.0236    0.0051    0.0320    0.0425
% % %     0.0031    0.0178    0.0236    0.0224   -0.2043   -0.2744    0.0019    0.0158    0.0210
% % %     0.0051    0.0320    0.0425    0.0019    0.0158    0.0210    0.0335   -0.1426   -0.1924
% % %     0.0031    0.0213    0.0283    0.0036    0.0220    0.0293    0.0008    0.0155    0.0207
% % %     0.0043    0.0269    0.0357    0.0037    0.0221    0.0293    0.0064    0.0409    0.0544
% % % ];
% % % q2=[0.0031    0.0213    0.0283    0.0043    0.0269    0.0357
% % %     0.0036    0.0220    0.0293    0.0037    0.0221    0.0293
% % %     0.0008    0.0155    0.0207    0.0064    0.0409    0.0544
% % %     0.0320   -0.1547   -0.2086    0.0061    0.0371    0.0494
% % %     0.0061    0.0371    0.0494    0.0243   -0.1883   -0.2531
% % %  ];
% % %%%%%%%%%%%%%%%%%%%%laggure
% % % q1=[-0.1356   -0.0988         0   -0.0897   -0.0640         0   -0.0001    0.0008         0
% % %    -0.0283   -0.0192         0    0.0160    0.0151         0    0.0006    0.0015         0
% % %     0.0899    0.0666         0   -0.0847   -0.0553         0    0.0113   -0.0025         0
% % %    -0.0243   -0.0265         0    0.0676    0.0033         0   -0.1854    0.0537         0
% % %     0.0179    0.0060         0   -0.2279    0.0791         0   -0.0045    0.0025         0
% % % ];
% % % q2=[0.0021   -0.0002         0    0.0746    0.0555         0
% % %     0.0045    0.0001         0   -0.1103   -0.0802         0
% % %    -0.0067    0.0024         0   -0.1588   -0.1133         0
% % %    -0.2154    0.0521         0    0.1054    0.0639         0
% % %     0.0080   -0.0039         0    0.0028   -0.0071         0
% % % ];
% % %%%%%%%%%%%%%%%%%%%%%%%%
% % q=[q1 q2];
% % p1=-q*(A0-B0*q);
% % p2=-q*(A0-B0*q)^2;
% % p3=-q*(A0-B0*q)^3;
% % p4=-q*(A0-B0*q)^4;
% % p=[p1;p2;p3;p4];
% % % % for i=1:Np
% % % %     kk=-q*(A0-B0*q)^i;
% % % %     L=[L,kk'];
% % % % end



%%%%%%%%%%%%%%%%%%%%plot%%%%%%%%%%%%%
v=DOS.signals.values;
for i=1:length(DOS.signals.values)
    if v(i)==1
        w(i)=7;
    else
        w(i)=-7;
    end
end


%%%%%%%%%%%%%PLOT FIGURE%%%%%%%%%%%%%%
X =DOS.time;
Y = w;
sh = stairs(X,Y);
hold on
bottom = -7;
x = [sh.XData(1),repelem(sh.XData(2:end),2)];
y = [repelem(sh.YData(1:end-1),2),sh.YData(end)]
%%%%%%%%%%%%%%%%%%%%%%%
figure (1)
subplot(331)
fill([x,fliplr(x)],[y,bottom*ones(size(y))],[0.6 0.6 0.6])
%legend('DOS')
axis([0 5 -7 7]);
hold on
% plot(xlaguerre.time, xlaguerre.signals.values(:,1),'r-.',xlaguerre.time, xlaguerre.signals.values(:,2),'b--.',xlaguerre.time, xlaguerre.signals.values(:,3),'g','LineWidth' , 2);
plot(xlaguerre.time, xlaguerre.signals.values,'LineWidth' , 2);
legend('DOS','x11','x12','x13','...','Location','north','NumColumns',5, 'fontsize',10);
xlabel('t/s', 'fontsize',15);
ylabel('x(lagurre)','fontsize',15); 
subplot(332)
plot(nxlaguerre.time, nxlaguerre.signals.values,'LineWidth' , 2)
%axis([0 upredictive.time(end) 7 -7])
legend('norm(e)');
xlabel('t/s', 'fontsize',15);
ylabel('elagurre', 'fontsize',15);
grid on
subplot(333)
plot(ulaguerre.time, ulaguerre.signals.values,'LineWidth' , 2)
%axis([0 upredictive.time(end) 7 -7])
legend('U');
xlabel('t/s', 'fontsize',15);
ylabel('ulaguerre', 'fontsize',15);
grid on
subplot(334)
fill([x,fliplr(x)],[y,bottom*ones(size(y))],[0.6 0.6 0.6])
axis([0 5 -7 7]);
hold on
plot(xstatespace.time, xstatespace.signals.values,'LineWidth' ,2);
xlabel('t/s', 'fontsize',15);
ylabel('xstatespace', 'fontsize',15);

subplot(335)
plot(nxlqr.time, nxlqr.signals.values,'LineWidth' , 2)
legend('norm(e)');
xlabel('t/s', 'fontsize',15);
ylabel('estatespace', 'fontsize',15);
grid on
subplot(336)
plot(ustatespace.time, ustatespace.signals.values,'LineWidth' , 2)
legend('U');
xlabel('t/s', 'fontsize',15);
ylabel('ustatespace', 'fontsize',15);
grid on
subplot(337)
fill([x,fliplr(x)],[y,bottom*ones(size(y))],[0.6 0.6 0.6])
axis([0 5 -7 7]);
hold on
plot(xlqr.time, xlqr.signals.values,'LineWidth' ,2);
xlabel('t/s', 'fontsize',15);
ylabel('xlqr', 'fontsize',15);
subplot(338)
plot(nxlqr.time, nxlqr.signals.values,'LineWidth' , 2)
legend('norm(e)');
xlabel('t/s', 'fontsize',15);
ylabel('elqr', 'fontsize',15);

grid on
subplot(339)
plot(ulqr.time, ulqr.signals.values,'LineWidth' , 2)
legend('U');
xlabel('t/s', 'fontsize',15);
ylabel('ulqr', 'fontsize',15);


figure(2)
subplot(331)
fill([x,fliplr(x)],[y,bottom*ones(size(y))],[0.6 0.6 0.6])
axis([0 5 -7 7]);
hold on
plot(xwithattack.time, xwithattack.signals.values,'LineWidth' ,2);
legend('DOS','x11','x12','x13','...','Location','north','NumColumns',4, 'fontsize',15);
xlabel('t/s', 'fontsize',15);
ylabel('xwithattack', 'fontsize',15);
subplot(332)
plot(nxwithattack.time, nxwithattack.signals.values,'LineWidth' , 2)
legend('norm(e)');
xlabel('t/s', 'fontsize',15);
ylabel('ewithattack', 'fontsize',15);
grid on
subplot(333)
plot(uwithattack.time, uwithattack.signals.values,'LineWidth' , 2)
legend('U');
xlabel('t/s', 'fontsize',15);
ylabel('ulqr', 'fontsize',15);
grid on
subplot(334)
plot(xwithoutattack.time, xwithoutattack.signals.values,'LineWidth' ,2);
grid on
xlabel('t/s', 'fontsize',15);
ylabel('xwithoutattack', 'fontsize',15);
subplot(335)
plot(nxwithoutattack.time, nxwithoutattack.signals.values,'LineWidth' , 2)
legend('norm(e)');
xlabel('t/s', 'fontsize',15);
ylabel('ewithoutattack', 'fontsize',15);
grid on
subplot(336)
plot(uwithoutattack.time, uwithoutattack.signals.values,'LineWidth' , 2)
legend('U');
xlabel('t/s', 'fontsize',15);
ylabel('uwithoutattack', 'fontsize',15);
grid on


