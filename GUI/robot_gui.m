function varargout = robot_gui(varargin)
% ROBOT_GUI MATLAB code for robot_gui.fig
%      ROBOT_GUI, by itself, creates a new ROBOT_GUI or raises the existing
%      singleton*.
%
%      H = ROBOT_GUI returns the handle to a new ROBOT_GUI or the handle to
%      the existing singleton*.
%
%      ROBOT_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROBOT_GUI.M with the given input arguments.
%
%      ROBOT_GUI('Property','Value',...) creates a new ROBOT_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before robot_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to robot_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help robot_gui

% Last Modified by GUIDE v2.5 30-Dec-2022 07:01:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @robot_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @robot_gui_OutputFcn, ...
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


% --- Executes just before robot_gui is made visible.
function robot_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to robot_gui (see VARARGIN)

% Choose default command line output for robot_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

%mo phong su dung toolbox
global theta1 theta2 theta3 theta4
global theta_1 theta_2 theta_3 theta_4 
global Kx Ky Kz J
axes(handles.axes_robot);
 d_1 = 0;d_2 = 4.2;d_3 = 0;d_4 = 0;d_5 = 0;
a_1= 0;a_2=0.9;a_3=7.7;a_4=9.7;a_5=13.3;
anpha_1=0;anpha_2=-pi/2;anpha_3=0;anpha_4=0;anpha_5=0;
%theta=0,d,a,alpha,
L(1) = Link([0,d_1,a_1,anpha_1,0]);
L(2) = Link([0,d_2,a_2,anpha_2,0]);
L(3) = Link([0,d_3,a_3,anpha_3,0]);
L(4) = Link([0,d_4,a_4,anpha_4,0]);
L(5) = Link([0,d_5,a_5,anpha_5,0]);

Robot=SerialLink(L);
Robot.name = '4DOF Robot';
cla
Robot.plot([0 0 0  -pi/2  pi/2  ]); %hien thi voi goc theta tuong ung
%Robot.plot([0 -pi/4 -pi 0 -pi/2 ]);
hold on

axes(handles.axes4);
%%%

%theta_1=theta_1_min+(theta_1_max-theta_1_min)*Rand(N,1);
%theta_1=theta_1_min+(theta_1_max-theta_1_min)*Rand(N,1);
%theta_1=theta_1_min+(theta_1_max-theta_1_min)*Rand(N,1);
















% UIWAIT makes robot_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = robot_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function theta_1_Callback(hObject, eventdata, handles)
% hObject    handle to theta_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta_1 as text
%        str2double(get(hObject,'String')) returns contents of theta_1 as a double


% --- Executes during object creation, after setting all properties.
function theta_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta_2_Callback(hObject, eventdata, handles)
% hObject    handle to theta_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta_2 as text
%        str2double(get(hObject,'String')) returns contents of theta_2 as a double


% --- Executes during object creation, after setting all properties.
function theta_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta_3_Callback(hObject, eventdata, handles)
% hObject    handle to theta_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta_3 as text
%        str2double(get(hObject,'String')) returns contents of theta_3 as a double


% --- Executes during object creation, after setting all properties.
function theta_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta_4_Callback(hObject, eventdata, handles)
% hObject    handle to theta_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta_4 as text
%        str2double(get(hObject,'String')) returns contents of theta_4 as a double


% --- Executes during object creation, after setting all properties.
function theta_4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in forward.
function forward_Callback(hObject, eventdata, handles)
%
global theta1 theta2 theta3 theta4
global theta_1 theta_2 theta_3 theta_4 
global Kx Ky Kz J
global T
axes(handles.axes_robot);
Th_1 = str2double(handles.theta_1.String)*pi/180;
Th_2 = str2double(handles.theta_2.String)*pi/180;
Th_3 = str2double(handles.theta_3.String)*pi/180;
Th_4 = str2double(handles.theta_4.String)*pi/180;

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
set(handles.f_x,'string',num2str(x));
set(handles.f_y,'string',num2str(y));
set(handles.f_z,'string',num2str(z));
%
plot3(x,y,z,'--ks');
hold on
%



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
global theta1 theta2 theta3 theta4
global theta_1 theta_2 theta_3 theta_4 
global Kx Ky Kz J
axes(handles.axes_robot);
% hObject    handle to pushbutton3 (see GCBO)
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

Robot.plot([ 0  0 0 -pi/2 pi/2 ]) %hien thi voi goc theta tuong ung
%Robot.plot([0 -pi/4 -pi 0 -pi/2 ]);
hold on
set(handles.s_theta1,'value',0);
set(handles.s_theta2,'value',0);
set(handles.s_theta3,'value',-90);
set(handles.s_theta4,'value',90);
%
set(handles.theta_1,'string',num2str(0));
set(handles.theta_2,'string',num2str(0));
set(handles.theta_3,'string',num2str(-90));
set(handles.theta_4,'string',num2str(90));
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
global theta1 theta2 theta3 theta4
global theta_1 theta_2 theta_3 theta_4 
global Kx Ky Kz J
axes(handles.axes_robot);
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla;
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

Robot.plot([ 0  0 0 -pi/2 pi/2  ]); %hien thi voi goc theta tuong ung
%Robot.plot([0 -pi/4 -pi 0 -pi/2 ]);
hold on

set(handles.s_theta1,'value',0);
set(handles.s_theta2,'value',0);
set(handles.s_theta3,'value',-90);
set(handles.s_theta4,'value',90);
%
set(handles.theta_1,'string',num2str(0));
set(handles.theta_2,'string',num2str(0));
set(handles.theta_3,'string',num2str(-90));
set(handles.theta_4,'string',num2str(90));


% --- Executes on slider movement.
function s_theta1_Callback(hObject, eventdata, handles)
global theta1 theta2 theta3 theta4
global theta_1 theta_2 theta_3 theta_4 
global Kx Ky Kz J
axes(handles.axes_robot);
    theta1 = get(handles.s_theta1,'value');
   % set(handles.editt1,'string',num2str(theta1));
    theta2 = get(handles.s_theta2,'value');
   % set(handles.editt2,'string',num2str(theta2));
    theta3 = get(handles.s_theta3,'value');
   % set(handles.editt3,'string',num2str(theta3));
    theta4 = get(handles.s_theta4,'value');
   % set(handles.editt4,'string',num2str(theta4));

    theta1 = theta1/180*pi;
    theta2 = theta2/180*pi;
    theta3 = theta3/180*pi;
    theta4 = theta4/180*pi;
    
    %
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
Robot.plot([0 theta1  theta2 theta3 theta4 ]); 
hold on

%set
set(handles.theta_1,'string',num2str(theta1*180/pi));
set(handles.theta_2,'string',num2str(theta2*180/pi));
set(handles.theta_3,'string',num2str(theta3*180/pi));
set(handles.theta_4,'string',num2str(theta4*180/pi));
%
axes(handles.axes4);
   cla; 
    
    
% --- Executes during object creation, after setting all properties.
function s_theta1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s_theta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function s_theta2_Callback(hObject, eventdata, handles)
global theta1 theta2 theta3 theta4
global theta_1 theta_2 theta_3 theta_4 
global Kx Ky Kz J
axes(handles.axes_robot);
% hObject    handle to s_theta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    theta1 = get(handles.s_theta1,'value');
   % set(handles.editt1,'string',num2str(theta1));
    theta2 = get(handles.s_theta2,'value');
   % set(handles.editt2,'string',num2str(theta2));
    theta3 = get(handles.s_theta3,'value');
   % set(handles.editt3,'string',num2str(theta3));
    theta4 = get(handles.s_theta4,'value');
   % set(handles.editt4,'string',num2str(theta4));

    theta1 = theta1/180*pi;
    theta2 = theta2/180*pi;
    theta3 = theta3/180*pi;
    theta4 = theta4/180*pi;
    
    %
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
Robot.plot([0 theta1  theta2 theta3 theta4 ]); 
hold on
%set
set(handles.theta_1,'string',num2str(theta1*180/pi));
set(handles.theta_2,'string',num2str(theta2*180/pi));
set(handles.theta_3,'string',num2str(theta3*180/pi));
set(handles.theta_4,'string',num2str(theta4*180/pi));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function s_theta2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s_theta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function s_theta3_Callback(hObject, eventdata, handles)
global theta1 theta2 theta3 theta4
global theta_1 theta_2 theta_3 theta_4 
global Kx Ky Kz J
axes(handles.axes_robot);
% hObject    handle to s_theta3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    theta1 = get(handles.s_theta1,'value');
   % set(handles.editt1,'string',num2str(theta1));
    theta2 = get(handles.s_theta2,'value');
   % set(handles.editt2,'string',num2str(theta2));
    theta3 = get(handles.s_theta3,'value');
   % set(handles.editt3,'string',num2str(theta3));
    theta4 = get(handles.s_theta4,'value');
   % set(handles.editt4,'string',num2str(theta4));

    theta1 = theta1/180*pi;
    theta2 = theta2/180*pi;
    theta3 = theta3/180*pi;
    theta4 = theta4/180*pi;
    
    %
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
Robot.plot([0 theta1  theta2 theta3 theta4 ]); 
hold on
%set
set(handles.theta_1,'string',num2str(theta1*180/pi));
set(handles.theta_2,'string',num2str(theta2*180/pi));
set(handles.theta_3,'string',num2str(theta3*180/pi));
set(handles.theta_4,'string',num2str(theta4*180/pi));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function s_theta3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s_theta3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function s_theta4_Callback(hObject, eventdata, handles)
global theta1 theta2 theta3 theta4
global theta_1 theta_2 theta_3 theta_4 
global Kx Ky Kz J
axes(handles.axes_robot);
% hObject    handle to s_theta4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    theta1 = get(handles.s_theta1,'value');
   % set(handles.editt1,'string',num2str(theta1));
    theta2 = get(handles.s_theta2,'value');
   % set(handles.editt2,'string',num2str(theta2));
    theta3 = get(handles.s_theta3,'value');
   % set(handles.editt3,'string',num2str(theta3));
    theta4 = get(handles.s_theta4,'value');
   % set(handles.editt4,'string',num2str(theta4));

    theta1 = theta1/180*pi;
    theta2 = theta2/180*pi;
    theta3 = theta3/180*pi;
    theta4 = theta4/180*pi;
    
    %
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
Robot.plot([0 theta1  theta2 theta3 theta4 ]); 
hold on
%set
set(handles.theta_1,'string',num2str(theta1*180/pi));
set(handles.theta_2,'string',num2str(theta2*180/pi));
set(handles.theta_3,'string',num2str(theta3*180/pi));
set(handles.theta_4,'string',num2str(theta4*180/pi));
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function s_theta4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s_theta4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider7_Callback(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider9_Callback(hObject, eventdata, handles)
% hObject    handle to s_theta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s_theta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function f_x_Callback(hObject, eventdata, handles)
% hObject    handle to f_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f_x as text
%        str2double(get(hObject,'String')) returns contents of f_x as a double


% --- Executes during object creation, after setting all properties.
function f_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function f_y_Callback(hObject, eventdata, handles)
% hObject    handle to f_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f_y as text
%        str2double(get(hObject,'String')) returns contents of f_y as a double


% --- Executes during object creation, after setting all properties.
function f_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function f_z_Callback(hObject, eventdata, handles)
% hObject    handle to f_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f_z as text
%        str2double(get(hObject,'String')) returns contents of f_z as a double


% --- Executes during object creation, after setting all properties.
function f_z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k_x_Callback(hObject, eventdata, handles)
% hObject    handle to k_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k_x as text
%        str2double(get(hObject,'String')) returns contents of k_x as a double


% --- Executes during object creation, after setting all properties.
function k_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k_y_Callback(hObject, eventdata, handles)
% hObject    handle to k_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k_y as text
%        str2double(get(hObject,'String')) returns contents of k_y as a double


% --- Executes during object creation, after setting all properties.
function k_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k_z_Callback(hObject, eventdata, handles)
% hObject    handle to k_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k_z as text
%        str2double(get(hObject,'String')) returns contents of k_z as a double


% --- Executes during object creation, after setting all properties.
function k_z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in bt_confirm.
function bt_confirm_Callback(hObject, eventdata, handles)
global theta1 theta2 theta3 theta4
global theta_1 theta_2 theta_3 theta_4 
global tag
global Kx Ky Kz J
axes(handles.axes_robot);
% hObject    handle to bt_confirm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    Kx = str2num(get(handles.k_x,'string'));
    Ky = str2num(get(handles.k_y,'string'));
    Kz= str2num(get(handles.k_z,'string'));
   
%
plot3(Kx,Ky,Kz,'--bs');
hold on
%
d_1 = 0;d_2 = 4.2;d_3 = 0;d_4 = 0;d_5 = 0;
a_1= 0;a_2=0.9;a_3=7.7;a_4=9.7;a_5=13.3;
anpha_1=0;anpha_2=-pi/2;anpha_3=0;anpha_4=0;anpha_5=0;

L(1) = Link([0,d_2,a_2,anpha_2,0],'standard');
L(2) = Link([0,d_3,a_3,anpha_3,0],'standard');
L(3) = Link([0,d_4,a_4,anpha_4,0],'standard');
L(4) = Link([0,d_5,a_5,anpha_5,0],'standard');

Robot=SerialLink(L);
     Tf=[1 0 0 Kx;
        0 1 0 Ky;
        0 0 1 Kz;
        0 0 0 1];
M=[1 1 1 1 0 0];
q=[0 0 0 0 ];
T=Robot.ikine(Tf,q,M)*180/pi;


handles.edit30.String = num2str((T(1)));
handles.edit31.String = num2str((T(2)));
handles.edit32.String = num2str((T(3)));
handles.edit33.String = num2str((T(4)));
%Robot.plot(J*pi/180);



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in rb_op2.
function rb_op2_Callback(hObject, eventdata, handles)
% hObject    handle to rb_op2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_op2


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5



function my_x_Callback(hObject, eventdata, handles)
% hObject    handle to my_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of my_x as text
%        str2double(get(hObject,'String')) returns contents of my_x as a double


% --- Executes during object creation, after setting all properties.
function my_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to my_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function my_y_Callback(hObject, eventdata, handles)
% hObject    handle to my_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of my_y as text
%        str2double(get(hObject,'String')) returns contents of my_y as a double


% --- Executes during object creation, after setting all properties.
function my_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to my_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%msgbox('heelo');

function my_z_Callback(hObject, eventdata, handles)
% hObject    handle to my_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of my_z as text
%        str2double(get(hObject,'String')) returns contents of my_z as a double


% --- Executes during object creation, after setting all properties.
function my_z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to my_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p_x_Callback(hObject, eventdata, handles)
% hObject    handle to p_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p_x as text
%        str2double(get(hObject,'String')) returns contents of p_x as a double


% --- Executes during object creation, after setting all properties.
function p_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p_y_Callback(hObject, eventdata, handles)
% hObject    handle to p_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p_y as text
%        str2double(get(hObject,'String')) returns contents of p_y as a double


% --- Executes during object creation, after setting all properties.
function p_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p_z_Callback(hObject, eventdata, handles)
% hObject    handle to p_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p_z as text
%        str2double(get(hObject,'String')) returns contents of p_z as a double


% --- Executes during object creation, after setting all properties.
function p_z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global theta1 theta2 theta3 theta4
global theta_1 theta_2 theta_3 theta_4 
global tag
global Kx Ky Kz Ktheta J 
syms the the1 the2 the3 the4 the5 the6 a1 a2 a3 a4 a5 d1 d2 d3 d4 x y z
%
a2=0.9; a3=7.7;a4=9.7;a5=13.3;d1=0;d2=4.2;
%nguoc

%
    x = str2num(get(handles.k_x,'string'));
    y = str2num(get(handles.k_y,'string'));
    z=  str2num(get(handles.k_z,'string'));
    the= str2num(get(handles.k_theta,'string'));
    the=the*pi/180;

A=1; B=9;
T=eye(4);
DH = [0 0 d1+d2 the1;...
     a2 -pi/2 0 the2;...
     a3 0 0 the3;...
     a4 0 0 the4];
P4_EE = [a5;0;0];
F = [1;2;1];
for i = 1:4
    ci = cos(DH(i,4));
    si = sin(DH(i,4));
    a_i_1 = DH(i,1);
    c_i_1 = cos(DH(i,2));
    s_i_1 = sin(DH(i,2));
    di = DH(i,3);
    T_all(:,:,i) = [ci       -si      0      a_i_1;...
                 si*c_i_1 ci*c_i_1 -s_i_1 -s_i_1*di;...
                 si*s_i_1 ci*s_i_1 c_i_1  c_i_1*di;...
                 0        0        0      1];
    T=T*T_all(:,:,i);

end
T01 = T_all(:,:,1);
T12 = T_all(:,:,2);
T23 = T_all(:,:,3);
T34 = T_all(:,:,4);
T04 = T01*T12*T23*T34;
P0_EE = simplify(T*[P4_EE;1]);
P0_EE = P0_EE(1:3,:);

the1x = atan2(y,x);
k1 = x/cos(the1x)-cos(the)*a5-a2;
k2 = d1+d2-sin(the)*a5-z;
the23x = Robot_2DOF(a3,a4,k1,k2);
the2x(1:2,1) = the23x(:,1)*180/pi;
the3x(1:2,1) = the23x(:,2)*180/pi;
the1x = the1x*180/pi;
the4x(:,1) = the*180/pi-the2x(:,1)-the3x(:,1);

%

handles.edit30.String = num2str(the1x);
handles.edit31.String = num2str(the2x(1))
handles.edit32.String = num2str(the3x(1))
handles.edit33.String = num2str(the4x(1))

handles.edit34.String = num2str(the1x)
handles.edit35.String = num2str(the2x(2))
handles.edit36.String = num2str(the3x(2))
handles.edit37.String = num2str(the4x(2))


















% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)












% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global theta1 theta2 theta3 theta4
global theta_1 theta_2 theta_3 theta_4 
global Kx Ky Kz J x y z
global T
axes(handles.axes_robot);
Th_1 = str2double(handles.theta_1.String)*pi/180;
Th_2 = str2double(handles.theta_2.String)*pi/180;
Th_3 = str2double(handles.theta_3.String)*pi/180;
Th_4 = str2double(handles.theta_4.String)*pi/180;

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
DH=[0      0        d_1+d_2     Th_1;
    a_2   -pi/2     0           Th_2;
    a_3    0        0           Th_3;
    a_4    0        0           Th_4];
P_4_EE=[a_5;0;0;1];
T=CaculateT(DH);
q0=[0  0 0 -pi/2 pi/2 ];

P_0_EE=T*P_4_EE;
x=P_0_EE(1,1);
y=P_0_EE(2,1);
z=P_0_EE(3,1);
handles.my_x.String = num2str(x);
handles.my_y.String = num2str(y);
handles.my_z.String = num2str(z);
plot3(x,y,z,'--ys');
hold on
%dong hoc thuan 


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
global theta1 theta2 theta3 theta4
global theta_1 theta_2 theta_3 theta_4 
global Kx Ky Kz J x y z
global T
axes(handles.axes_robot);
Th_1 = str2double(handles.theta_1.String)*pi/180;
Th_2 = str2double(handles.theta_2.String)*pi/180;
Th_3 = str2double(handles.theta_3.String)*pi/180;
Th_4 = str2double(handles.theta_4.String)*pi/180;

%mo phong su dung toolbox
d_1 = 0;d_2 = 4.2;d_3 = 0;d_4 = 0;d_5 = 0;
a_1= 0;a_2=0.9;a_3=7.7;a_4=9.7;a_5=13.3;
anpha_1=0;anpha_2=-pi/2;anpha_3=0;anpha_4=0;anpha_5=0;

s1=sin(Th_1);
c1=cos(Th_1);
s2=sin(Th_2);
c2=cos(Th_2);
c23=cos(Th_2+Th_3);
s23=sin(Th_2+Th_3);
c234=cos(Th_2+Th_3+Th_4);
s234=sin(Th_2+Th_3+Th_4);
x=a_2*c1+a_3*c2*c2+a_4*c1*c23+a_5*c1*c234-d_2*s1;
y=a_2*s1+a_3*s1*c2+a_4*s1*c23+a_5*s1*c234+d_2*c1;
z=d_1-a_3*s2-a_4*s23-a_5*s234;



handles.p_x.String = num2str(x);
handles.p_y.String = num2str(y);
handles.p_z.String = num2str(z);
plot3(x,y,z,'--bs');
hold on
%dong hoc thuan 



function k_theta_Callback(hObject, eventdata, handles)
% hObject    handle to k_theta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k_theta as text
%        str2double(get(hObject,'String')) returns contents of k_theta as a double


% --- Executes during object creation, after setting all properties.
function k_theta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k_theta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit30_Callback(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit30 as text
%        str2double(get(hObject,'String')) returns contents of edit30 as a double


% --- Executes during object creation, after setting all properties.
function edit30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit31_Callback(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit31 as text
%        str2double(get(hObject,'String')) returns contents of edit31 as a double


% --- Executes during object creation, after setting all properties.
function edit31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit32_Callback(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit32 as text
%        str2double(get(hObject,'String')) returns contents of edit32 as a double


% --- Executes during object creation, after setting all properties.
function edit32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit33_Callback(hObject, eventdata, handles)
% hObject    handle to edit33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit33 as text
%        str2double(get(hObject,'String')) returns contents of edit33 as a double


% --- Executes during object creation, after setting all properties.
function edit33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d_1 = 0;d_2 = 4.2;d_3 = 0;d_4 = 0;d_5 = 0;
a_1= 0;a_2=0.9;a_3=7.7;a_4=9.7;a_5=13.3;
anpha_1=0;anpha_2=-pi/2;anpha_3=0;anpha_4=0;anpha_5=0;
mtheta_1=[-pi/2 pi/2 ];
mtheta_2=[7 131]*pi/180;
mtheta_3=[-90 123]*pi/180;
mtheta_4=[-90 82]*pi/180;
axes(handles.axes4);
cla;
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
    
    



function edit34_Callback(hObject, eventdata, handles)
% hObject    handle to edit34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit34 as text
%        str2double(get(hObject,'String')) returns contents of edit34 as a double


% --- Executes during object creation, after setting all properties.
function edit34_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit35_Callback(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit35 as text
%        str2double(get(hObject,'String')) returns contents of edit35 as a double


% --- Executes during object creation, after setting all properties.
function edit35_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit36_Callback(hObject, eventdata, handles)
% hObject    handle to edit36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit36 as text
%        str2double(get(hObject,'String')) returns contents of edit36 as a double


% --- Executes during object creation, after setting all properties.
function edit36_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit37_Callback(hObject, eventdata, handles)
% hObject    handle to edit37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit37 as text
%        str2double(get(hObject,'String')) returns contents of edit37 as a double


% --- Executes during object creation, after setting all properties.
function edit37_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in b_trajb.
function b_trajb_Callback(hObject, eventdata, handles)
% hObject    handle to b_trajb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global theta1 theta2 theta3 theta4
global theta_1 theta_2 theta_3 theta_4 
global Kx Ky Kz J
global T
syms t


axes(handles.axes_robot);
tx = str2double(handles.my_x.String);
ty = str2double(handles.my_y.String);
tz = str2double(handles.my_z.String);
time=str2double(handles.e_time.String);
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

for t=0:0.1:time
x=X(1,1)+X(2,1)*t+X(3,1)*t*t+X(4,1)*t*t*t;
y=Y(1,1)+Y(2,1)*t+Y(3,1)*t*t+Y(4,1)*t*t*t;
z=Z(1,1)+Z(2,1)*t+Z(3,1)*t*t+Z(4,1)*t*t*t;
    plot3(x,y,z,'--ko');
    hold on
end







% --- Executes on button press in b_trajt.
function b_trajt_Callback(hObject, eventdata, handles)
% hObject    handle to b_trajt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global theta1 theta2 theta3 theta4
global theta_1 theta_2 theta_3 theta_4 
global Kx Ky Kz J
global T
axes(handles.axes_robot);
Th_1 = str2double(handles.theta_1.String)*pi/180;
Th_2 = str2double(handles.theta_2.String)*pi/180;
Th_3 = str2double(handles.theta_3.String)*pi/180;
Th_4 = str2double(handles.theta_4.String)*pi/180;
time=str2double(handles.e_time.String);
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
set(handles.f_x,'string',num2str(x));
set(handles.f_y,'string',num2str(y));
set(handles.f_z,'string',num2str(z));
%
plot3(x,y,z,'--ks');
hold on
%
atj=zeros(4,4);
t1=time;
t=0:.04:2;
sqtraj1=jtraj(q0,qz,t); 
for i=1:1:51
    atj=Robot.fkine(sqtraj1(i,:));
    jta=transpose(atj);
    JTA(i,:)=jta(4,1:3);
    jta=JTA;
    plot2(jta(i,:),'r.')
    Robot.plot(sqtraj1(i,:))
    plot2(JTA,'b')
end



function e_time_Callback(hObject, eventdata, handles)
% hObject    handle to e_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e_time as text
%        str2double(get(hObject,'String')) returns contents of e_time as a double


% --- Executes during object creation, after setting all properties.
function e_time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
