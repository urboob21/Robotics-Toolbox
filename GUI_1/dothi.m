function varargout = dothi(varargin)
% DOTHI MATLAB code for dothi.fig
%      DOTHI, by itself, creates a new DOTHI or raises the existing
%      singleton*.
%
%      H = DOTHI returns the handle to a new DOTHI or the handle to
%      the existing singleton*.
%
%      DOTHI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DOTHI.M with the given input arguments.
%
%      DOTHI('Property','Value',...) creates a new DOTHI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dothi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dothi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dothi

% Last Modified by GUIDE v2.5 03-Jan-2023 14:31:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dothi_OpeningFcn, ...
                   'gui_OutputFcn',  @dothi_OutputFcn, ...
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


% --- Executes just before dothi is made visible.
function dothi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dothi (see VARARGIN)

% Choose default command line output for dothi
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

    
d_1 = 0;d_2 = 4.2;d_3 = 0;d_4 = 0;d_5 = 0;
a_1= 0;a_2=0.9;a_3=7.7;a_4=9.7;a_5=13.3;
anpha_1=0;anpha_2=-pi/2;anpha_3=0;anpha_4=0;anpha_5=0;
mtheta_1=[-pi/2 pi/2 ];
mtheta_2=[7 131]*pi/180;
mtheta_3=[-90 123]*pi/180;
mtheta_4=[-90 82]*pi/180;
axes(handles.axes_x);

for i=1:1:2000
    Th_1=mtheta_1(1,1)+(mtheta_1(1,2)-mtheta_1(1,1))*randn(1,1);
    Th_2=mtheta_2(1,1)+(mtheta_2(1,2)-mtheta_2(1,1))*rand(1,1);
    Th_3=mtheta_3(1,1)+(mtheta_3(1,2)-mtheta_3(1,1))*rand(1,1);
    Th_4=mtheta_4(1,1)+(mtheta_4(1,2)-mtheta_4(1,1))*rand(1,1);
    DH=[0      0        d_1+d_2     Th_1;
    a_2   -pi/2     0           Th_2;
    a_3    0        0           Th_3;
    a_4    0        0           Th_4];
    P_4_EE=[a_5;0;0;1];
    T=CaculateT(DH);
    P_0_EE=T*P_4_EE;
    x=P_0_EE(1,1);
    y=P_0_EE(2,1);
    z=P_0_EE(3,1);
    plot(x,y,'--bs');
    hold on

end
ylabel('y (cm)');
xlabel('x (cm)');
    

    axes(handles.axes_y);

for i=1:1:2000
    Th_1=mtheta_1(1,1)+(mtheta_1(1,2)-mtheta_1(1,1))*randn(1,1);
        Th_2=mtheta_2(1,1)+(mtheta_2(1,2)-mtheta_2(1,1))*rand(1,1);
        Th_3=mtheta_3(1,1)+(mtheta_3(1,2)-mtheta_3(1,1))*rand(1,1);
        Th_4=mtheta_4(1,1)+(mtheta_4(1,2)-mtheta_4(1,1))*rand(1,1);
        DH=[0      0        d_1+d_2     Th_1;
        a_2   -pi/2     0           Th_2;
        a_3    0        0           Th_3;
        a_4    0        0           Th_4];
        P_4_EE=[a_5;0;0;1];
        T=CaculateT(DH);
        P_0_EE=T*P_4_EE;
        x=P_0_EE(1,1);
        y=P_0_EE(2,1);
        z=P_0_EE(3,1);
        plot(x,z,'--bs');
        hold on
end
  ylabel('z (cm)');
  xlabel('x (cm)');
  
  %
      axes(handles.axes_z);
N=3000;
for i=1:1:2000
        Th_1=mtheta_1(1,1)+(mtheta_1(1,2)-mtheta_1(1,1))*randn(1,1);
        Th_2=mtheta_2(1,1)+(mtheta_2(1,2)-mtheta_2(1,1))*rand(1,1);
        Th_3=mtheta_3(1,1)+(mtheta_3(1,2)-mtheta_3(1,1))*rand(1,1);
        Th_4=mtheta_4(1,1)+(mtheta_4(1,2)-mtheta_4(1,1))*rand(1,1);
        DH=[0      0        d_1+d_2     Th_1;
        a_2   -pi/2     0           Th_2;
        a_3    0        0           Th_3;
        a_4    0        0           Th_4];
        P_4_EE=[a_5;0;0;1];
        T=CaculateT(DH);
        P_0_EE=T*P_4_EE;
        x=P_0_EE(1,1);
        y=P_0_EE(2,1);
        z=P_0_EE(3,1);
        plot(y,z,'--bs');
        hold on
end
  ylabel('z (cm)');
  xlabel('y (cm)');
% UIWAIT makes dothi wait for user response (see UIRESUME)
% uiwait(handles.figure1);

d_1 = 0;d_2 = 4.2;d_3 = 0;d_4 = 0;d_5 = 0;
a_1= 0;a_2=0.9;a_3=7.7;a_4=9.7;a_5=13.3;
anpha_1=0;anpha_2=-pi/2;anpha_3=0;anpha_4=0;anpha_5=0;
mtheta_1=[-pi/2 pi/2 ];
mtheta_2=[7 131]*pi/180;
mtheta_3=[-90 123]*pi/180;
mtheta_4=[-90 82]*pi/180;
hold off
axes(handles.axes4);

  
  
for i=1:1:500
    Th_1=mtheta_1(1,1)+(mtheta_1(1,2)-mtheta_1(1,1))*randn(1,1);
    Th_2=mtheta_2(1,1)+(mtheta_2(1,2)-mtheta_2(1,1))*rand(1,1);
    Th_3=mtheta_3(1,1)+(mtheta_3(1,2)-mtheta_3(1,1))*rand(1,1);
    Th_4=mtheta_4(1,1)+(mtheta_4(1,2)-mtheta_4(1,1))*rand(1,1);
    DH=[0      0        d_1+d_2     Th_1;
    a_2   -pi/2     0           Th_2;
    a_3    0        0           Th_3;
    a_4    0        0           Th_4];
    P_4_EE=[a_5;0;0;1];
    T=CaculateT(DH);
    P_0_EE=T*P_4_EE;
    x=P_0_EE(1,1);
    y=P_0_EE(2,1);
    z=P_0_EE(3,1);
    plot3(x,y,z,'--bs');
    grid on
    hold on
end
xlabel('x (cm)');
ylabel('y (cm)');
zlabel('z (cm)');




























% --- Outputs from this function are returned to the command line.
function varargout = dothi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function axes_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes_x
