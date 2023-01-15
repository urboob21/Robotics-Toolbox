function varargout = dothi_ja2(varargin)
% DOTHI_JA2 MATLAB code for dothi_ja2.fig
%      DOTHI_JA2, by itself, creates a new DOTHI_JA2 or raises the existing
%      singleton*.
%
%      H = DOTHI_JA2 returns the handle to a new DOTHI_JA2 or the handle to
%      the existing singleton*.
%
%      DOTHI_JA2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DOTHI_JA2.M with the given input arguments.
%
%      DOTHI_JA2('Property','Value',...) creates a new DOTHI_JA2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dothi_ja2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dothi_ja2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dothi_ja2

% Last Modified by GUIDE v2.5 03-Jan-2023 16:18:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dothi_ja2_OpeningFcn, ...
                   'gui_OutputFcn',  @dothi_ja2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before dothi_ja2 is made visible.
function dothi_ja2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dothi_ja2 (see VARARGIN)

% Choose default command line output for dothi_ja2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes dothi_ja2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
syms t 
tx = getappdata(0,'b1');
ty = getappdata(0,'b2');
tz = getappdata(0,'b3');
time = getappdata(0,'b4');
qhome=[21.9 0 13.9];
qend=[tx ty tz];

A=[1 0 0 0;
   1 time time*time time*time*time;
   0 1 0 0;
   0 1 2*time 3*time*time];

B=[ qhome(1,1); qend(1,1); 0; 0];
X=A^-1*B; %4:1
x=X(1,1)+X(2,1)*t+X(3,1)*t*t+X(4,1)*t*t*t;

B1=[ qhome(1,2); qend(1,2); 0; 0];
Y=A^-1*B1;
y=Y(1,1)+Y(2,1)*t+Y(3,1)*t*t+Y(3,1)*t*t*t;

B2=[ qhome(1,3); qend(1,3); 0; 0];
Z=A^-1*B2;
z=Z(1,1)+Z(2,1)*t+Z(3,1)*t*t+Z(4,1)*t*t*t;


axes(handles.axes4);
hold on
  ylabel('x (cm)');
  xlabel('t (s)');
for t=0:0.04:time
x=X(1,1)+X(2,1)*t+X(3,1)*t*t+X(4,1)*t*t*t;
y=Y(1,1)+Y(2,1)*t+Y(3,1)*t*t+Y(4,1)*t*t*t;
z=Z(1,1)+Z(2,1)*t+Z(3,1)*t*t+Z(4,1)*t*t*t;
plot(t,x,'r.')
end
hold off
%%%

axes(handles.axes5);
hold on
  ylabel('x (cm)');
  xlabel('t (s)');
for t=0:0.04:time
x=X(1,1)+X(2,1)*t+X(3,1)*t*t+X(4,1)*t*t*t;
y=Y(1,1)+Y(2,1)*t+Y(3,1)*t*t+Y(4,1)*t*t*t;
z=Z(1,1)+Z(2,1)*t+Z(3,1)*t*t+Z(4,1)*t*t*t;
plot(t,y,'r.')
end
hold off
%%%

axes(handles.axes6);
hold on
  ylabel('x (cm)');
  xlabel('t (s)');
for t=0:0.04:time
x=X(1,1)+X(2,1)*t+X(3,1)*t*t+X(4,1)*t*t*t;
y=Y(1,1)+Y(2,1)*t+Y(3,1)*t*t+Y(4,1)*t*t*t;
z=Z(1,1)+Z(2,1)*t+Z(3,1)*t*t+Z(4,1)*t*t*t;
plot(t,z,'r.')
end
hold off



% --- Outputs from this function are returned to the command line.
function varargout = dothi_ja2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
