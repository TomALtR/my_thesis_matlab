function varargout = GUI_mo_phong(varargin)
% GUI_MO_PHONG MATLAB code for GUI_mo_phong.fig
%      GUI_MO_PHONG, by itself, creates a new GUI_MO_PHONG or raises the existing
%      singleton*.
%
%      H = GUI_MO_PHONG returns the handle to a new GUI_MO_PHONG or the handle to
%      the existing singleton*.
%
%      GUI_MO_PHONG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_MO_PHONG.M with the given input arguments.
%
%      GUI_MO_PHONG('Property','Value',...) creates a new GUI_MO_PHONG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_mo_phong_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_mo_phong_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_mo_phong

% Last Modified by GUIDE v2.5 15-Jun-2023 23:19:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_mo_phong_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_mo_phong_OutputFcn, ...
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


% --- Executes just before GUI_mo_phong is made visible.
function GUI_mo_phong_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_mo_phong (see VARARGIN)

% Choose default command line output for GUI_mo_phong
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_mo_phong wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_mo_phong_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
set (handles.radiobutton2,'value',0)
set (handles.radiobutton3,'value',0)

% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
set (handles.radiobutton1,'value',0)
set (handles.radiobutton3,'value',0)

% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
set (handles.radiobutton2,'value',0)
set (handles.radiobutton1,'value',0)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3



function edit2_Callback(hObject, eventdata, handles)
a= get(handles.edit2 ,'double')



% --- Executes on button press in VE.
function VE_Callback(hObject, eventdata, handles)
i1= get(handles.radiobutton1,'value')
i2= get(handles.radiobutton2,'value')
i3= get(handles.radiobutton3,'value')
s= get(handles.edit2,'string')
s=str2double(s)
x1=-2;
x2=2;
y1=0;
y2=9;
%plot a rectangle
x = [x1, x2, x2, x1, x1];
y = [y1, y1, y2, y2, y1];
plot(x, y, 'k-', 'LineWidth', 3);
hold on;
grid on
axis ([-10 10 0 9])
axis square
 m= 1; 
 c = 0.5;
 d= -0.5;
   %cyan/black line
  x4=0.28:0.01:0.35
  y4= -4.1*x4 + c -d +0.7
  plot(x4,y4,'-k','LineWidth', 2)
  hold on
  x2=0:0.1:0.32
   y2 = m*x2 + c + d
    %green/black line
  plot(x2,y2,'-k','LineWidth', 2)
  hold on
if i1 == 1
    for t = 0:0.5:8
x1 = -2:1:2;
y1 = m*x1 + c + t;
x3 = -2:1:2;
y3 = tan(0.03*pi)*x3 + c + t;
plot(x1, y1, '-b', 'LineWidth', 2);
plot(x3, y3, '-r', 'LineWidth', 2);
pause (0.5)
hold on
    end
end
if i2 == 1
    s= get(handles.edit2,'string')
    s=str2double(s)
    for t = 0:s:8
x1 = -2:1:2;
y1 = m*x1 + c + t;
x3 = -2:1:2;
y3 = tan(0.03*pi)*x3 + c + 0.6*t;
plot(x1, y1, '-b', 'LineWidth', 2);
plot(x3, y3, '-r', 'LineWidth', 2);
pause (0.5)
hold on
    end
end
if i3 == 1
    s= get(handles.edit2,'string')
    s=str2double(s)
    for t = 0:s:8
x1 = -2:1:2;
y1 = m*x1 + c + 0.6*t;
x3 = -2:1:2;
y3 = tan(0.03*pi)*x3 + c + t;
plot(x1, y1, '-b', 'LineWidth', 2);
plot(x3, y3, '-r', 'LineWidth', 2);
pause(0.5)
hold on
    end
end

% hObject    handle to VE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
close all


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
cla(handles.axes1)

% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
