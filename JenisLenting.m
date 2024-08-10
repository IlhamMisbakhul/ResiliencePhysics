function varargout = JenisLenting(varargin)
% JENISLENTING MATLAB code for JenisLenting.fig
%      JENISLENTING, by itself, creates a new JENISLENTING or raises the existing
%      singleton*.
%
%      H = JENISLENTING returns the handle to a new JENISLENTING or the handle to
%      the existing singleton*.
%
%      JENISLENTING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in JENISLENTING.M with the given input arguments.
%
%      JENISLENTING('Property','Value',...) creates a new JENISLENTING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before JenisLenting_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to JenisLenting_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help JenisLenting

% Last Modified by GUIDE v2.5 09-Jun-2023 21:36:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @JenisLenting_OpeningFcn, ...
                   'gui_OutputFcn',  @JenisLenting_OutputFcn, ...
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


% --- Executes just before JenisLenting is made visible.
function JenisLenting_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to JenisLenting (see VARARGIN)

% Choose default command line output for JenisLenting
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes JenisLenting wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = JenisLenting_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in hitung.
function hitung_Callback(hObject, eventdata, handles)
mA=str2double(get(handles.ma,'string'));
mB=str2double(get(handles.mb,'string'));
vA=str2double(get(handles.va,'string'));
vB=str2double(get(handles.vb,'string'));
e=str2double(get(handles.nilai,'string'))

a=get(handles.sempurna,'value');
b=get(handles.sebagian,'value');
c=get(handles.tidak,'value');

if (a==1)
    vA2=(((mA-mB)/(mA+mB))*(vA)) + (((2*mB)/(mA+mB))*(vB));
    vB2=(((2*mA)/(mA+mB))*(vA)) + (((mB-mA)/(mA+mB))*(vB));
elseif (b==1)
    vA2=((mA*vA)+(mB*vB)-(mB*((e*vA)-(e*vB))))/(mA+mB);
    vB2=(((e*vA)-(e*vB))+vA2);
else (c==1)
    vA2=((mA*vA)+(mB*vB))/(mA+mB)
    vB2=vA2
end
        
set(handles.vA2,'string',vA2);
set(handles.vB2,'string',vB2);

% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.ma,'string',0);
set(handles.mb,'string',0);
set(handles.va,'string',0);
set(handles.vb,'string',0);
set(handles.nilai,'string',0);
set(handles.vA2,'string',0);
set(handles.vB2,'string',0);
set(handles.sempurna,'value',0);
set(handles.sebagian,'value',0);
set(handles.tidak,'value',0);

% --- Executes on button press in keluar.
function keluar_Callback(hObject, eventdata, handles)
% hObject    handle to keluar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;



function vA2_Callback(hObject, eventdata, handles)
% hObject    handle to vA2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vA2 as text
%        str2double(get(hObject,'String')) returns contents of vA2 as a double


% --- Executes during object creation, after setting all properties.
function vA2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vA2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vB2_Callback(hObject, eventdata, handles)
% hObject    handle to vB2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vB2 as text
%        str2double(get(hObject,'String')) returns contents of vB2 as a double


% --- Executes during object creation, after setting all properties.
function vB2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vB2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in sempurna.
function sempurna_Callback(hObject, eventdata, handles)
% hObject    handle to sempurna (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sempurna


% --- Executes on button press in sebagian.
function sebagian_Callback(hObject, eventdata, handles)
% hObject    handle to sebagian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of sebagian


% --- Executes on button press in tidak.
function tidak_Callback(hObject, eventdata, handles)
% hObject    handle to tidak (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tidak



function nilai_Callback(hObject, eventdata, handles)
% hObject    handle to nilai (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nilai as text
%        str2double(get(hObject,'String')) returns contents of nilai as a double


% --- Executes during object creation, after setting all properties.
function nilai_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nilai (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ma_Callback(hObject, eventdata, handles)
% hObject    handle to ma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ma as text
%        str2double(get(hObject,'String')) returns contents of ma as a double


% --- Executes during object creation, after setting all properties.
function ma_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mb_Callback(hObject, eventdata, handles)
% hObject    handle to mb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mb as text
%        str2double(get(hObject,'String')) returns contents of mb as a double


% --- Executes during object creation, after setting all properties.
function mb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function va_Callback(hObject, eventdata, handles)
% hObject    handle to va (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of va as text
%        str2double(get(hObject,'String')) returns contents of va as a double


% --- Executes during object creation, after setting all properties.
function va_CreateFcn(hObject, eventdata, handles)
% hObject    handle to va (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vb_Callback(hObject, eventdata, handles)
% hObject    handle to vb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vb as text
%        str2double(get(hObject,'String')) returns contents of vb as a double


% --- Executes during object creation, after setting all properties.
function vb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
