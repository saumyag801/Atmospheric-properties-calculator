function varargout = atmos(varargin)
% ATMOS MATLAB code for atmos.fig
%      ATMOS, by itself, creates a new ATMOS or raises the existing
%      singleton*.
%
%      H = ATMOS returns the handle to a new ATMOS or the handle to
%      the existing singleton*.
%
%      ATMOS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ATMOS.M with the given input arguments.
%
%      ATMOS('Property','Value',...) creates a new ATMOS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before atmos_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to atmos_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help atmos

% Last Modified by GUIDE v2.5 28-Feb-2023 20:59:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @atmos_OpeningFcn, ...
                   'gui_OutputFcn',  @atmos_OutputFcn, ...
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


% --- Executes just before atmos is made visible.
function atmos_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to atmos (see VARARGIN)

% Choose default command line output for atmos
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
imshow('atmosphere_dts.jpg')
set(handles.axes1)
% UIWAIT makes atmos wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = atmos_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function h_box_Callback(hObject, eventdata, handles)
% hObject    handle to h_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h_box as text
%        str2double(get(hObject,'String')) returns contents of h_box as a double


% --- Executes during object creation, after setting all properties.
function h_box_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function P_box_Callback(hObject, eventdata, handles)
% hObject    handle to P_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of P_box as text
%        str2double(get(hObject,'String')) returns contents of P_box as a double


% --- Executes during object creation, after setting all properties.
function P_box_CreateFcn(hObject, eventdata, handles)
% hObject    handle to P_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T_box_Callback(hObject, eventdata, handles)
% hObject    handle to T_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T_box as text
%        str2double(get(hObject,'String')) returns contents of T_box as a double


% --- Executes during object creation, after setting all properties.
function T_box_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Rho_box_Callback(hObject, eventdata, handles)
% hObject    handle to Rho_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Rho_box as text
%        str2double(get(hObject,'String')) returns contents of Rho_box as a double


% --- Executes during object creation, after setting all properties.
function Rho_box_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rho_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sigma_box_Callback(hObject, eventdata, handles)
% hObject    handle to sigma_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sigma_box as text
%        str2double(get(hObject,'String')) returns contents of sigma_box as a double


% --- Executes during object creation, after setting all properties.
function sigma_box_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sigma_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mu_box_Callback(hObject, eventdata, handles)
% hObject    handle to mu_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mu_box as text
%        str2double(get(hObject,'String')) returns contents of mu_box as a double


% --- Executes during object creation, after setting all properties.
function mu_box_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mu_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nu_box_Callback(hObject, eventdata, handles)
% hObject    handle to nu_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nu_box as text
%        str2double(get(hObject,'String')) returns contents of nu_box as a double


% --- Executes during object creation, after setting all properties.
function nu_box_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nu_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a_box_Callback(hObject, eventdata, handles)
% hObject    handle to a_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a_box as text
%        str2double(get(hObject,'String')) returns contents of a_box as a double


% --- Executes during object creation, after setting all properties.
function a_box_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in compute_box.
function compute_box_Callback(hObject, eventdata, handles)
% hObject    handle to compute_box (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
H = str2num(get(handles.h_box,'String'));
h = H*1000; % altitude in m
% Mean Sea Level Values
T0 = 288;   % temp, at MSL in K
P0 = 101325; % pressure at MSL in pa
Rho0 = 1.2256;  % density at MSL in kg/m^3

L = 0.0065;   % Lapse rate in Troposphere (K/m)
R = 287;      % Characteristic Gas constant (J/Kg-K)
g = 9.807;    % acceleration due to gravity (m/s^2)

mu0 = 1.714*10^-5; % dynamic viscosity coeff. at 273K

if h<=11000
%***********************************
% Tropospheric calculations (h<=11km)
%***********************************
%disp('Tropospheric Data');
% Eq(i)
T = T0-L*h;    
%Eq(ii)
P = P0*(T/T0)^(g/(L*R));
%Eq(iii)
Rho = P/(R*T);
sigma = Rho/Rho0;  %Relative density

else
%***************************
% Stratospheric Calculations
%***************************
%disp('Stratospheric Data');
Ps = 22604.144; %Pr. at tropopause and in Lower stratosphere
Ts = 216.5;   % Temp. at tropopause and in Lower stratosphere
T = Ts;
P = Ps*exp(-g*(h-11000)/(R*Ts));
Rho = P/(R*T);
sigma = Rho/Rho0;  %Relative density
end
mu = mu0*(T/273)^0.75;  % Rayleigh formula for a  viscosity of air
nu = mu/Rho;  %Kinematic viscosity
a = sqrt(1.4*R*T);   % Velocity of sound

set(handles.T_box,'String',T)
set(handles.P_box,'String',P)
set(handles.Rho_box,'String',Rho)
set(handles.sigma_box,'String',sigma)
set(handles.mu_box,'String',mu)
set(handles.nu_box,'String',nu)
set(handles.a_box,'String',a)





