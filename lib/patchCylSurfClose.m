function [F,V,C]=patchCylSurfClose(X,Y,Z,C)

[F,V,C]=surf2patch(X,Y,Z,C);
I=[(1:size(Z,1)-1)' (1:size(Z,1)-1)' (2:size(Z,1))' (2:size(Z,1))'];
J=[size(Z,2).*ones(size(Z,1)-1,1) ones(size(Z,1)-1,1) ones(size(Z,1)-1,1) size(Z,2).*ones(size(Z,1)-1,1)];
F_sub=sub2ind(size(Z),I,J);
F=[F;F_sub];
 
[C]=vertexToFaceMeasure(F,C);
C(end-size(F_sub,1):end,:)=C(end-size(F_sub,1):end,:)+0.5;

%% 
% _*GIBBON footer text*_ 
% 
% License: <https://github.com/gibbonCode/GIBBON/blob/master/LICENSE>
% 
% GIBBON: The Geometry and Image-based Bioengineering add-On. A toolbox for
% image segmentation, image-based modeling, meshing, and finite element
% analysis.
% 
% Copyright (C) 2019  Kevin Mattheus Moerman
% 
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.
