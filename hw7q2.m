f=@(x)sin(2*pi*x);
for m=1:4
    subplot(2,2,m);
    n=m*5;
    i=0:1:n;
    dataX=cos(((2*i+1)*pi)/(2*(n+1)));
    dataY=f(dataX)+sqrt(1e-4)*randn(size(dataX));
    x=linspace(-1,1,200);
    fplot(@(x)LagrangeForm(x,dataX,dataY),[-1,1],'LineWidth',1);
    hold on
    fplot(f,[-1,1],'LineWidth',1);
    plot(dataX,dataY,'o');
    legend('Interf','f','data');
    title(['n=', num2str(n)]);
end

%%
error=zeros(1,10);

for k=1:10
    n=k*10;
    i=0:n;
    dataX=cos(((2*i+1)*pi)/(2*(n+1)));
    f=@(x)sin(2*pi*x);
    dataY=f(dataX)+sqrt(1e-4)*randn(size(dataX));
    tildef=@(x)LagrangeForm(x,dataX,dataY);
    error(k)=infErr(f,tildef,-1,1);
end
x=10:10:100;
semilogy(x,error);
title('Error plot for Chebyshev node');

    
    
    