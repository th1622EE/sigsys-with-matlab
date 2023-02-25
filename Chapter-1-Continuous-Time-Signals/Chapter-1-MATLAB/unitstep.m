function y=unitstep(t,ad)
% generation of unit step
% t: time
% ad : advance (positive), delay (negative)
% USE y=unitstep(t,ad)
N=length(t);
y=zeros(1,N);
for i=1:N,
    if t(i)>=-ad,
    y(i)=1;
    end
end
