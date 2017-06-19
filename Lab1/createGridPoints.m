function X = createGridPoints(x0, x1, step)
    if numel(x0) == 1
        X = x0(1):step:x1(1);
    elseif numel(x1) == 2
        [X, Y] = meshgrid(x0(1):step:x1(1),x0(2):step:x1(2));
        X = [X(:),Y(:)];
    elseif numel(x0) == 3
        [X, Y, Z] = meshgrid(x0(1):step:x1(1),x0(2):step:x1(2),x0(3):step:x1(3));
        X = [X(:),Y(:),Z(:)];
    else
        msgbox('the dimensionality of x0 is greater than 3');
    end
end