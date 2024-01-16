clc
close all
clear all
%%%%%% this program write for a binary matter on the binery matter
%%%%%%%%%%%%%%%%%%%%%%% inputss of program %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%% insert inputss base on my table
inputss=zeros(5,3);
temp=300;
%substrate matter
inputss(1,1)=9;

%direction of substrate
inputss(1,2)=2;

%matter 1
inputss(2,1)=5;
inputss(2,2)=0;
inputss(2,3)=0;
%interface1
inputss(3,1)=11;
inputss(3,2)=0;
inputss(3,3)=0;
%matter 2
inputss(4,1)=10;
inputss(4,2)=0;
inputss(4,3)=0;
%interface 2
inputss(5,1)=11;
inputss(5,2)=0;
inputss(5,3)=0;
%%%%%%%%%%%%%%%%
% Y=[];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[sub,dir,matter1,cation1,anion1,interface1,cation_interface1,anion_interface1,matter2,cation2,anion2,interface2,cation_interface2,anion_interface2]= type_generator(inputss);
%%%%%%%%%%%%%%%%%%%%%%%%%%% number of atoms in SLS %%%%%%%%%%%%%%%%%%%%%%%
for m=1:20
    for n=1:20

if (inputss(3,1)==inputss(5,1))
    atoms=(m+n+1)*2;
else
    atoms=(m+n+2)*2;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%% determine starter matter %%%%%%%%%%%%%%%%%%%%%
if anion1==anion_interface2
    made1chiye=1;
elseif cation1==cation_interface2
    made1chiye=0;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%% constants matrix %%%%%%%%%%%%%%%%%%%%%%%%%%%%
% constants[a        D001       D110      D111      delta0      Ev      Esa
%1 Si
%2 Ge
% %3 GaAs
% %4 AlAs
% %5 InAs
% %6 GaP
% %7 AlP
% %8 InP
% %9 GaSb
% %10 AlSb
% %11 InSb
%12 ZnSe
%13 ZnS
%14 ZnTe
%15 CdTe
%16 HgTe                                        ];
if temp==3
       ct=[5.43     0.776      0.515      0.444      0.04      -7.03      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          5.65     0.751      0.450      0.371      0.30      -6.35      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          5.6532   0.9036     0.5539     0.4638     0.34      -6.92      -7.8974    -3.9809     1.5382       3.3225       7.4514       6.0021       -7.0938       5.6245       8.0023        5.0071        5.7493        2.3818        4.9244       0.420        0.174 
          5.66139  0.9589     0.6067     0.5159     0.28      -7.49      -3.21537   -9.52462    -0.09711     4.97139      12.05550     3.99445      -8.84261      2.42476      13.20317      5.83246       4.60075       -0.01434      4.25949      0.29145      0.03152
          6.0583   1.0868     0.6734     0.5698     0.38      -6.67      -9.2448    -3.6333     1.3697       2.8394       6.8602       6.0756       -6.1866       4.9419       6.7975        3.1176        5.1385        2.1066        5.2173       0.420        0.300
          5.4508   0.8830     0.5418     0.4539     0.08      -7.40      -8.63163   -1.77800    0.77214      4.17259      11.90050     7.99670      -7.21087      6.12826      6.10944       6.69771       6.33303       1.83129       4.87432      0.05379      0.21636
          5.4635   0.8560     0.6552     0.5976     0.1       -8.09      -8.93515   -0.06175    1.13009      4.55816      12.82470     9.41477      -6.68397      9.44286      5.93164       10.08057      4.80831       2.28630       5.12891      0.04600      0.01608
          5.8690   1.1213     0.7491     0.6524     0.11      -7.04      -7.91404   -2.76662    0.08442      4.75968      9.88869      7.66966      -6.16976      3.62283      6.90390       4.61375       6.18932       0.75617       4.23370      0.09400      0.54000
          6.09593  0.9108     0.571      0.483      0.82      -6.25      -5.7211    -3.7936     0.093277     2.9226       7.5896       4.7786       -5.4224       4.6432       7.8682        5.6835        6.4495        1.0457        4.7857       0.818        0.196
          6.1355   0.9901     0.6415     0.551      0.65      -6.66      -4.55720   -4.11800    0.01635      4.87411      9.84286      7.43245      -6.63365      4.58724      8.53398       7.38446       6.29608       1.10706       4.89960      0.70373      0.03062     
          6.47937  1.09312    0.6884     0.5909     0.81      -6.09      -9.1956    -3.0643     -0.14949     3.3187       6.7863       5.7628       -5.5151       1.8721       6.8243        3.0298        5.3791        0.69328       3.7993       0.856        0.417
          5.65     1.206      0.716      0.597      0.43      -8.37      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          5.40     1.248      0.814      0.704      0.07      -9.15      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          6.08     1.142      0.751      0.651      0.91      -7.17      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          6.48     1.402      0.974      0.863      0.93      -7.07      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          6.48     1.390      0.949      0.837      1.05      -6.88      0          0           0            0            0            0            0             0            0             0             0             0             0            0            0
          0        0          0          0          0         0          0          0           0            0            0            0            0             0            0             0             0             0             0            0            0];   
elseif temp==300
      ct=[5.43     0.776      0.515      0.444      0.04      -7.03      0                      0                    0                      0                     0                    0                     0                      0                     0                     0                   0                     0                      0                    0            0
          5.65     0.751      0.450      0.371      0.30      -6.35      0                      0                    0                      0                     0                    0                     0                      0                     0                     0                   0                     0                      0                    0            0
          5.6532   0.9036     0.5539     0.4638     0.34      -6.92      -4.7641813344628       -6.03541743829276    1.57758704453441       3.29667632995118      9.05281528559231     5.31344233474672      -6.79413186195334      1.90144184229089      11.6705109735545      3.83312256967395    4.7757635451889       2.40063883755422       5.29518522995679     0.421        0.174 
          5.66139  0.9589     0.6067     0.5159     0.28      -7.49      -8.16386523601099      -0.636864677398826   1.4692712006717        3.38749463954868      14.974034596368      7.11180695765096      -6.39514516945137      7.42306056417324      6.78321878474318      7.30416141011008    3.14584024796502      2.33782025977348       4.62101927624392     0.421        0.024
          6.0583   1.0868     0.6734     0.5698     0.38      -6.67      -9.2448                -3.6333              1.3697                 2.8394                6.8602               6.0756                -6.1866                4.9419                6.7975                3.1176              5.1385                2.1066                 5.2173               0.420        0.300
          5.4509   0.8830     0.5418     0.4539     0.08      -7.40      -2.71223555982859      -7.41719996661102    0.597109034267913      4.51504481188593      14.8843959942226     9.91835174597312      -7.48367718887606      4.49617016641386      11.9761472232676      8.22414285334778    3.21678502195798      1.68307388590674       4.77300874487524     0.067        0.174
          5.4635   0.8560     0.6552     0.5976     0.04      -8.09      -0.004144639223956     -9.76180067735932    3.22409302325581       1.89980821131208      14.9779832548792     6.73981952243394      -6.96402047584693      6.3441458132586       7.9219765049133       4.47282656506714    4.40426894348301      2.48868617156136       4.90223146621128     0.067        0.024
          5.8690   1.1213     0.7491     0.6524     0.11      -7.04      -7.91404               -2.76662             0.08442                4.75968               9.88869              7.66966               -6.16976               3.62283               6.90390               4.61375             6.18932               0.75617                4.23370              0.09400      0.54000
          6.09593  0.9108     0.571      0.483      0.82      -6.25      -5.7211                -3.7936              0.093277               2.9226                7.5896               4.7786                -5.4224                4.6432                7.8682                5.6835              6.4495                1.0457                 4.7857               0.818        0.196
          6.1355   0.9901     0.6415     0.551      0.65      -6.66      -4.55720               -4.11800             0.01635                4.87411               9.84286              7.43245               -6.63365               4.58724               8.53398               7.38446             6.29608               1.10706                4.89960              0.70373      0.03062     
          6.47937  1.09312    0.6884     0.5909     0.81      -6.09      -9.1956                -3.0643              -0.14949               3.3187                6.7863               5.7628                -5.5151                1.8721                6.8243                3.0298              5.3791                0.69328                3.7993               0.856        0.417
          5.65     1.206      0.716      0.597      0.43      -8.37      0                      0                    0                      0                     0                    0                     0                      0                     0                     0                   0                     0                      0                    0            0
          5.40     1.248      0.814      0.704      0.07      -9.15      0                      0                    0                      0                     0                    0                     0                      0                     0                     0                   0                     0                      0                    0            0
          6.08     1.142      0.751      0.651      0.91      -7.17      0                      0                    0                      0                     0                    0                     0                      0                     0                     0                   0                     0                      0                    0            0
          6.48     1.402      0.974      0.863      0.93      -7.07      0                      0                    0                      0                     0                    0                     0                      0                     0                     0                   0                     0                      0                    0            0
          6.48     1.390      0.949      0.837      1.05      -6.88      0                      0                    0                      0                     0                    0                     0                      0                     0                     0                   0                     0                      0                    0            0
          0        0          0          0          0         0          0                      0                    0                      0                     0                    0                     0                      0                     0                     0                   0                     0                      0                    0            0];   
end
      %%%%%%%%%%%%%%%%%%%%%%%%%% calculation of bandline up %%%%%%%%%%%%%%%%%%%%%
    bandlineup=zeros(17,1);
for i=1:1:17
    bandlineup(i,1)=ct(i,6)+(ct(i,5)/3);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%% mismatch and a prependecular calculation%%%%%%%%%%%%%%%%%
% [mismacth_Sl,az]= mismatch_calc (inputss,m,n,ct);
    kx = 0 ;
    ky = 0;
    kz = 0 ;
    [~,E1]=SL_Hamiltonian(ct,inputss,atoms,made1chiye,m,kx,ky,kz,bandlineup) ;
    Ec1(m,n)=E1((4*atoms)+1,1);
    Ev1(m,n)=E1(4*atoms,1);
    
    kx = (2*pi/ct(inputss(1,1),1)) ;
    ky = 0;
    kz = 0 ;
    [~,E2]=SL_Hamiltonian(ct,inputss,atoms,made1chiye,m,kx,ky,kz,bandlineup) ;
    Ec2=E2((4*atoms)+1,1);
    
    Ecc=min(Ec1,Ec2);
    Eg(m,n)=abs(Ecc(m,n)-Ev1(m,n));
%      difEg(m,n)=Ec1-Ec2;
%    wave_lenght(m,n)=(1.239/Eg);
    mm(m,n)=m;
    nn(m,n)=n;

end
end

surf(mm,nn, Eg)
% hold on
% surf(mm,nn,Ecc)
xlabel([matter1,'(ML)'],'FontSize',18,'FontWeight','bold','Color','k')
ylabel([matter2,'(ML)'],'FontSize',18,'FontWeight','bold','Color','k')
zlabel('Eg(eV)','FontSize',18,'FontWeight','bold','Color','k')

% % zlabel('Wavelength(um)','FontSize',18,'FontWeight','bold','Color','k')
title(['For [(',matter1,')m -(',interface1,')-(',matter2,')n -(',interface2,')] with ',sub,' on substrate with direction of ',dir],'FontSize',18)












