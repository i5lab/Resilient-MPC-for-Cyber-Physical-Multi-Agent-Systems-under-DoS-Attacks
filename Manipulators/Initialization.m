
%%%%%%%%%%%%%%%%%%%%%%%Parameter%%%%%%%%%%
clc
clear
Ts=0.01;

O=[];
Np=4;

A=[  0.9976   0.009929   0.002418  8.072e-05
   -0.4824     0.9851     0.4824    0.02418
 0.0009744  3.239e-06      0.999    0.09997
   0.01948  9.704e-05   -0.01948      0.999
 ];
B=[0.001075
    0.2145
  1.75e-07
 6.996e-06];

C=[1   0   1  -1
  0   1   0   0];
for i=1:Np
    O=[O;(C*A^(i-1))];
end
[a1,a2]=size(A);
[n1,n2]=size(B);
[m1,m2]=size(C);
F=[];
for i=0:Np-1
    s1=[];
    for j=0:Np-i-2
        s=[C*A^(j)*B];
        s1=[s1;s];
    end
    S=[ zeros((i+1)*m1,n2);s1];
    F=[F,S];
end

sigma=[];
for i=0:Np-1
    si1=[];
    for j=0:Np-i-2
        si=[C*A^(j)];
        si1=[si1;si];
    end
    S1=[ zeros((i+1)*m1,a2);si1];
    sigma=[sigma,S1];
end

q1=[316.4376   20.8872 -118.6392  655.6372         0         0         0         0
 -158.2188  -10.4436   59.3196 -327.8186  316.4376   20.8872 -118.6392  655.6372
 -158.2188  -10.4436   59.3196 -327.8186         0         0         0         0
         0         0         0         0 -158.2188  -10.4436   59.3196 -327.8186
         0         0         0         0 -158.2188  -10.4436   59.3196 -327.8186

];
q2=[0         0         0         0         0         0         0         0
         0         0         0         0         0         0         0         0
  158.2188   10.4436  -59.3196  327.8186         0         0         0         0
         0         0         0         0  158.2188   10.4436  -59.3196  327.8186
 -158.2188  -10.4436   59.3196 -327.8186 -158.2188  -10.4436   59.3196 -327.8186
];
q3=[ -158.2188  -10.4436   59.3196 -327.8186
         0         0         0         0
         0         0         0         0
         0         0         0         0
  474.6564   31.3308 -177.9588  983.4558
];


c=2;
L=[ 2 0 0 0 -1; -1 2 0 0 0; -1 0 1 0 0; 0 -1 0 1 0; 0 -1 -1 -1 3];
A0=kron(eye(5),A);
B0=kron(eye(5),B);
q=[1.1926    0.4512   -0.9407    1.5229];
pp=[];
for i=0:Np-1
    p1=-c*q*(A-B*q)^i;
    pp=[pp ;p1];
end
p=kron(L,pp);
% p=[];
% for i=0:Np-1
%     p1=q*(A0-q)^i;
%     p=[p ;p1];
% end
[np,mp]=size(p1);
% 
% % 
% % 
% % % L=[ 1 0 0 0 -1; -1 1 0 0 0; -1 0 1 0 0; 0 -1 0 1 0; 0 -1 -1 -1 3];
% % % A0=kron(eye(5),A);
% % % B0=kron(eye(5),B);
% % % z=kron(L,eye(12));
% % % Q=z'*eye(60)*z;
% % % F0=kron(eye(5),F);
% % % O0=kron(eye(5),O);
% % % %%%%%%%%%%%%qlar
% % % %  q1=[0.6456   -0.7472   -0.0583   -0.1918    0.2122   -0.0084   -0.2180    0.2566    0.0076
% % % %     0.0247    0.6964    1.7164   -0.0179   -0.2047   -0.5172   -0.0111   -0.2356   -0.5849
% % % %    -0.1918    0.2122   -0.0084    0.5911   -0.6705   -0.0725    0.0347    0.0102    0.1024
% % % %    -0.0179   -0.2047   -0.5172    0.0220    0.6386    1.5598    0.0509    0.0319    0.1167
% % % %    -0.2180    0.2566    0.0076    0.0347    0.0102    0.1024    0.4018   -0.4471   -0.1021
% % % %    -0.0111   -0.2356   -0.5849    0.0509    0.0319    0.1167    0.0000    0.4333    1.0389
% % % %    -0.0580    0.0834    0.0562   -0.1382    0.2066    0.0657    0.0740   -0.0554    0.0823
% % % %     0.0189   -0.0651   -0.1397    0.0257   -0.1543   -0.3605    0.0420    0.0779    0.2200
% % % %    -0.1778    0.1950    0.0029   -0.2958    0.2415   -0.0872   -0.2926    0.2357   -0.0902
% % % %    -0.0145   -0.1910   -0.4745   -0.0806   -0.3114   -0.7988   -0.0818   -0.3075   -0.7908
% % % % 
% % % % 
% % % % ];
% % % % q2=[-0.0580    0.0834    0.0562   -0.1778    0.1950    0.0029
% % % %     0.0189   -0.0651   -0.1397   -0.0145   -0.1910   -0.4745
% % % %    -0.1382    0.2066    0.0657   -0.2958    0.2415   -0.0872
% % %     0.0257   -0.1543   -0.3605   -0.0806   -0.3114   -0.7988
% % %     0.0740   -0.0554    0.0823   -0.2926    0.2357   -0.0902
% % %     0.0420    0.0779    0.2200   -0.0818   -0.3075   -0.7908
% % %     0.4315   -0.4953   -0.1134   -0.3094    0.2607   -0.0908
% % %    -0.0053    0.4674    1.1181   -0.0813   -0.3259   -0.8379
% % %    -0.3094    0.2607   -0.0908    1.0756   -0.9330    0.2653
% % %    -0.0813   -0.3259   -0.8379    0.2582    1.1358    2.9020
% % % ];
% % 
% % 
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %%%%%%%%%%%%%%%%%state
% % %Kmpc=kron(eye(5),[1 0 0 0 0 0 0 0;0 1 0 0 0  0 0 0])*pinv(F0'*Q*F0+0.1*eye(40))*(F0'*Q*O0)
% % 
% % %%%%%%%%%%%%%%%%%%%%laggure
% % 
% % %%%%%%%%%%%%%%%%%%%%%%%%
% % % q=[q1 q2];
% % q=[    1.9115   -1.1429    0.4148
% %     3.0186    4.4625   -0.5557];
% % p1=-q;
% % p2=-q*(A0-B0*q)^1;
% % p3=-q*(A0-B0*q)^2;
% % p4=-q*(A0-B0*q)^3;
% % p=[p1;p2;p3;p4];
% % 
% v=DOS.signals.values;
% for i=1:length(DOS.signals.values)
%     if v(i)==1
%         w(i)=7;
%     else
%         w(i)=-7;
%     end
% end
% 
% 


 %%%%%%%%%%%%%PLOT FIGURE%%%%%%%%%%%%%%
% X =DOS.time;
% Y = w;
% sh = stairs(X(1:1803),Y);
% hold on
% bottom = -500;
% x = [sh.XData(1),repelem(sh.XData(2:end),2)];
% y = [repelem(sh.YData(1:end-1),2),sh.YData(end)];
% %%%%%%%%%%%%%%%%%%%%%%
% figure (1)
% plot(xo.time, xo.signals.values,'LineWidth' ,2);
% legend('xo1','xo2','xo3','xo4');
% xlabel('Iteration');
% ylabel('leader');
% grid on
% 
% figure (2)
% subplot(331)
% 
% 
% plot(x1withoutattack.time, x1withoutattack.signals.values,'LineWidth' ,2);
% legend('x11','x21','x31','x41','x51');
% xlabel('Iteration');
% ylabel('xi1-withoutattack');
% grid on
% subplot(332)
% plot(x2withoutattack.time, x2withoutattack.signals.values,'LineWidth' , 2)
% legend('x12','x22','x32','x42','x52');
% xlabel('Iteration');
% ylabel('xi2-withoutattack');
% grid on
% subplot(333)
% plot(ewithoutattack.time, ewithoutattack.signals.values,'LineWidth' , 2)
% legend('e');
% xlabel('Iteration');
% ylabel('e-withoutattack');
% grid on
% 
% 
% 
% subplot(334)
% fill([x,fliplr(x)],[y,bottom*ones(size(y))],[0.6 0.6 0.6])
% axis([0 10 -500 150]);
% hold on
% plot(x1withattack.time, x1withattack.signals.values,'LineWidth' ,2);
% legend('DOS','x11','x21','x31','x41','x51')
% xlabel('Iteration');
% ylabel('xi1-withattack');
% subplot(335)
% fill([x,fliplr(x)],[y,bottom*ones(size(y))],[0.6 0.6 0.6])
% axis([0 10 -500 150]);
% hold on
% plot(x2withattack.time, x2withattack.signals.values,'LineWidth' ,2);
% legend('DOS','x12','x22','x32','x42','x52');
% xlabel('Iteration');
% ylabel('xi2-withattack');
% subplot(336)
% plot(ewithattack.time, ewithattack.signals.values,'LineWidth' , 2)
% legend('e');
% xlabel('Iteration');
% ylabel('e-withattack');
% grid on
% 
% 
% 
% 
% subplot(337)
% fill([x,fliplr(x)],[y,bottom*ones(size(y))],[0.6 0.6 0.6])
% axis([0 10 -300 20]);
% hold on
% plot(x1res.time, x1res.signals.values,'LineWidth' ,2);
% legend('DOS','x11','x21','x31','x41','x51')
% xlabel('Iteration');
% ylabel('xi1-Resilient MPC');
% subplot(338)
% fill([x,fliplr(x)],[y,bottom*ones(size(y))],[0.6 0.6 0.6])
% axis([0 10 -300 20]);
% hold on
% plot(x2res.time, x2res.signals.values,'LineWidth' ,2);
% legend('DOS','x12','x22','x32','x42','x52');
% xlabel('Iteration');
% ylabel('xi2-Resilient MPC');
% subplot(339)
% plot(eres.time, eres.signals.values,'LineWidth' , 2)
% legend('e');
% xlabel('Iteration');
% ylabel('e-Resilient MPC');
% grid on
