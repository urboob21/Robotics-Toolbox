function varargout = dothi_ja(varargin)
% DOTHI_JA MATLAB code for dothi_ja.fig
%      DOTHI_JA, by itself, creates a new DOTHI_JA or raises the existing
%      singleton*.
%
%      H = DOTHI_JA returns the handle to a new DOTHI_JA or the handle to
%      the existing singleton*.
%
%      DOTHI_JA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DOTHI_JA.M with the given input arguments.
%
%      DOTHI_JA('Property','Value',...) creates a new DOTHI_JA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dothi_ja_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dothi_ja_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dothi_ja

% Last Modified by GUIDE v2.5 03-Jan-2023 15:24:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dothi_ja_OpeningFcn, ...
                   'gui_OutputFcn',  @dothi_ja_OutputFcn, ...
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


% --- Executes just before dothi_ja is made visible.
function dothi_ja_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dothi_ja (see VARARGIN)

% Choose default command line output for dothi_ja
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes dothi_ja wait for user response (see UIRESUME)
% uiwait(handles.figure1);

Th_1 = getappdata(0,'a1');
Th_2 = getappdata(0,'a2');
Th_3 = getappdata(0,'a3');
Th_4 = getappdata(0,'a4');
%mo phong su dung toolbox
d_1 = 0;d_2 = 4.2;d_3 = 0;d_4 = 0;d_5 = 0;
a_1= 0;a_2=0.9;a_3=7.7;a_4=9.7;a_5=13.3;
anpha_1=0;anpha_2=-pi/2;anpha_3=0;anpha_4=0;anpha_5=0;

L(1) = Link([0,d_1,a_1,anpha_1,0],'standard');
L(2) = Link([0,d_2,a_2,anpha_2,0],'standard');
L(3) = Link([0,d_3,a_3,anpha_3,0],'standard');
L(4) = Link([0,d_4,a_4,anpha_4,0],'standard');
L(5) = Link([0,d_5,a_5,anpha_5,0],'standard');

Robot=SerialLink(L);
Robot.name = '4DOF Robot';

q0=[0  0 0 -pi/2 pi/2 ];
PEE=[0 
     0 
     0 
     1];
%dong hoc thuan 

qz=[ 0 Th_1 Th_2 Th_3 Th_4 ]; %cac goc theta
T=Robot.fkine(qz)  
PA=T*PEE;
x=PA(1,1);
y=PA(2,1);
z=PA(3,1);
%

%
hold on
%
axes(handles.axes2);
  ylabel('x (cm)');
  xlabel('t (s)');
atj=zeros(4,4);
t=0:.04:2;
sqtraj1=jtraj(q0,qz,t); 
for i=1:1:51
    atj=Robot.fkine(sqtraj1(i,:));
    jta=transpose(atj);
    JTA(i,:)=jta(4,1:3);
    jta=JTA;
    plot(i*0.04-0.04,jta(i,1),'r.')
end
%
hold off
axes(handles.axes3);
hold on
  ylabel('y (cm)');
  xlabel('t (s)');
atj=zeros(4,4);
t=0:.04:2;
sqtraj1=jtraj(q0,qz,t); 
for i=1:1:51
    atj=Robot.fkine(sqtraj1(i,:));
    jta=transpose(atj);
    JTA(i,:)=jta(4,1:3);
    jta=JTA;
    plot(i*0.04-0.04,jta(i,2),'r.')
end
hold off
%
axes(handles.axes4);
hold on
  ylabel('z (cm)');
  xlabel('t (s)');
atj=zeros(4,4);
t=0:.04:2;
sqtraj1=jtraj(q0,qz,t); 
for i=1:1:51
    atj=Robot.fkine(sqtraj1(i,:));
    jta=transpose(atj);
    JTA(i,:)=jta(4,1:3);
    jta=JTA;
    plot(i*0.04-0.04,jta(i,3),'r.')
end
hold off




% --- Outputs from this function are returned to the command line.
function varargout = dothi_ja_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2
