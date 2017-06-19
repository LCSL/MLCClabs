function separatingFkNN(Xtr,Ytr, k)
% function separatingF(Xtr,Ytr,k)
% the function classifies points evenly sampled in a visualization area,
% according to the classifier kNNClassify
%
% Xtr - training examples 
% Ytr - training labels
% k - number of neighbors
%
% k = 5;
% [Xtr, Ytr] = MixGauss([[0;0],[1;1]],[0.5,0.25],1000);
% Ytr=mod(Ytr,2)*2-1;
% [Xts, Yts] = MixGauss([[0;0],[1;1]],[0.5,0.25],1000);
% Yts=mod(Yts,2)*2-1;
% figure;
% separatingFkNN(Xtr, Ytr, k);
% hold on
% scatter(Xts(:,1),Xts(:,2),25,Yts);


    step = 0.1;

    x = min(Xtr(:,1)):step:max(Xtr(:,1));
    y = min(Xtr(:,2)):step:max(Xtr(:,2));

    [X, Y] = meshgrid(x, y);
    XGrid = [X(:), Y(:)];
    
    YGrid = kNNClassify(Xtr, Ytr,  k, XGrid);

    contour(x, y, reshape(YGrid,numel(y),numel(x)),[0,0]);
end
