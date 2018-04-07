function [y] = LagrangeForm(x,dataX,dataY)
dataX=dataX(:);
dataY=dataY(:);
y=zeros(size(x));
for i_basis = 1:length(dataY)
    y=y+dataY(i_basis)*Lbasis(x,i_basis,dataX);
end
end

