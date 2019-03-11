%% graphicsModels
% Below is a demonstration of the features of the |graphicsModels| function

%% Syntax
% |[F,V]=graphicsModels(modelId);|

%% Description 
% 
%% Examples 

%%
clear; close all; clc;

% Plot settings
fontSize=15;
faceColor='b';
faceAlpha=1;
edgeColor='k';
edgeWidth=0.5;

%% 

hf=cFigure; 

surfaceNames={'stanford_bunny','utah_teapot','cow','parasaurolophus','femur','hip_implant','elephant','dolphin'};
plotColors=gjet(numel(surfaceNames));
for q=1:1:numel(surfaceNames)
   subplot(3,3,q); 
   
    [F,V]=graphicsModels(surfaceNames{q}); % Get surface
        
    title(surfaceNames{q},'FontSize',fontSize,'Interpreter','none');
    gpatch(F,V,plotColors(q,:),'none');    
    axisGeom(gca,fontSize);
    camlight('headlight'); 
    axis off;
end
drawnow; 

%% 
%
% <<gibbVerySmall.gif>>
% 
% _*GIBBON*_ 
% <www.gibboncode.org>
% 
% _Kevin Mattheus Moerman_, <gibbon.toolbox@gmail.com>
 
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
