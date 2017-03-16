clear all

topography = (xlsread('uiuc.xlsx')-1)*-1;

%%Parameters
cover = sum(topography(:)==0);  % Number of non-building spaces to be covered
[m,n] = size(topography);       % Dimensions of topography
k = 50;                         % Number of routers
range = 40;                     

distances = ones(m,n)+Inf;

% Randomly initialize router positions, then check that they are on open
% spaces.
routers = [randi(m,k,1),randi(n,k,1)];

index = 1;
while index <= k
    if (topgraphy(routers(index,1),routers(index,2)) == 0)
        index = index + 1;
    else
        routers(index,1) = randi(m);
        routers(index,2) = randi(n);
    end
end

% Anonymous function in order to pass the topography into objective
% function separate from the router positions.
% cvr = @(x) coverage(x,topgraphy)


        


%imshow(top);