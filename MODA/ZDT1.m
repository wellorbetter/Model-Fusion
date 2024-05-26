%___________________________________________________________________%
%  Multi-Objective Dragonfly Algorithm (MODA) source codes demo     %
%                           version 1.0                             %
%                                                                   %
%  Developed in MATLAB R2011b(7.13)                                 %
%                                                                   %
%  Author and programmer: Seyedali Mirjalili                        %
%                                                                   %
%         e-Mail: ali.mirjalili@gmail.com                           %
%                 seyedali.mirjalili@griffithuni.edu.au             %
%                                                                   %
%       Homepage: http://www.alimirjalili.com                       %
%                                                                   %
%   Main paper:                                                     %
%                                                                   %
%   S. Mirjalili, Dragonfly algorithm: a new meta-heuristic         %
%   optimization technique for solving single-objective, discrete,  %
%   and multi-objective problems, Neural Computing and Applications %
%   DOI: http://dx.doi.org/10.1007/s00521-015-1920-1                %
%___________________________________________________________________%

% Modify this file with respect to your objective function
function o = ZDT1(x,y1,y2,y3,y4,actual)

o = [0,0];
Yt=x(1)*y1+x(2)*y2+x(3)*y3+x(4)*y4;
%o(1)=mean(abs(Yt-xtrain_output)./xtrain_output)
%o(2)=var(abs(Yt-xtrain_output)./xtrain_output)
% o(1)=mean((Yt-actual).^2);%
% o(2)=std(Yt);
%  o(1)=mean((Yt-actual(1:288)).^2);

o(2)=mean(abs(Yt-actual)./actual)*100;
o(1)=mean((Yt - actual).^2); 

