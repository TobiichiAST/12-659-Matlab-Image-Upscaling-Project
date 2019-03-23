function varargout = myGUI(varargin)
% MYGUI MATLAB code for myGUI.fig
%      MYGUI, by itself, creates a new MYGUI or raises the existing
%      singleton*.
%
%      H = MYGUI returns the handle to a new MYGUI or the handle to
%      the existing singleton*.
%
%      MYGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MYGUI.M with the given input arguments.
%
%      MYGUI('Property','Value',...) creates a new MYGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before myGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to myGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help myGUI

% Last Modified by GUIDE v2.5 02-Oct-2017 22:32:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @myGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @myGUI_OutputFcn, ...
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


% --- Executes just before myGUI is made visible.
function myGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to myGUI (see VARARGIN)

% Choose default command line output for myGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes myGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = myGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function tab1Panel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tab1Panel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate tab1Panel

% --- Executes during object creation, after setting all properties.
function panel1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% --- Executes during object creation, after setting all properties.
function panel2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panel4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function panel3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panel3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function panel4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panel2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in tab1text.
function tab1text_Callback(hObject, eventdata, handles)
% hObject    handle to tab1text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in tab2text.
function tab2text_Callback(hObject, eventdata, handles)
% hObject    handle to tab2text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


function tab1_Callback(hObject, eventdata, handles)
set(handles.panel1,          'visible','on')  
set(handles.panel2,         'visible','off' ) 
set(handles.panel3,          'visible','off')  
set(handles.panel4,         'visible','off' ) 
set(handles.start,         'visible','off' ) 
axes(handles.OriginalImage);
picture=getappdata(0,'picture')
imshow(picture)



function tab2_Callback(hObject, eventdata, handles)
set(handles.panel1,          'visible','off')  
set(handles.panel2,         'visible','on' ) 
set(handles.panel3,          'visible','off')  
set(handles.panel4,         'visible','off' ) 
set(handles.start,         'visible','off' ) 

function tab3_Callback(hObject, eventdata, handles)
set(handles.panel1,          'visible','off')  
set(handles.panel2,         'visible','off' ) 
set(handles.panel3,          'visible','on')  
set(handles.panel4,         'visible','off' ) 
set(handles.start,         'visible','off' ) 

function tab4_Callback(hObject, eventdata, handles)
set(handles.panel1,          'visible','off')  
set(handles.panel2,         'visible','off' ) 
set(handles.panel3,          'visible','off')  
set(handles.panel4,         'visible','on' ) 
set(handles.start,         'visible','off' ) 



function blurvalue_Callback(hObject, eventdata, handles)
% hObject    handle to blurvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of blurvalue as text
%        str2double(get(hObject,'String')) returns contents of blurvalue as a double


% --- Executes during object creation, after setting all properties.
function blurvalue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to blurvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in blur.
function blur_Callback(hObject, eventdata, handles)
% hObject    handle to blur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function sharpenvalue_Callback(hObject, eventdata, handles)
% hObject    handle to sharpenvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sharpenvalue as text
%        str2double(get(hObject,'String')) returns contents of sharpenvalue as a double


% --- Executes during object creation, after setting all properties.
function sharpenvalue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sharpenvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in sharpen.
function sharpen_Callback(hObject, eventdata, handles)
% hObject    handle to sharpen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function bilinearvalue_Callback(hObject, eventdata, handles)
% hObject    handle to bilinearvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bilinearvalue as text
%        str2double(get(hObject,'String')) returns contents of bilinearvalue as a double


% --- Executes during object creation, after setting all properties.
function bilinearvalue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bilinearvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in bilinear.
function bilinear_Callback(hObject, eventdata, handles)
% hObject    handle to bilinear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function bicubicvalue_Callback(hObject, eventdata, handles)
% hObject    handle to bicubicvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bicubicvalue as text
%        str2double(get(hObject,'String')) returns contents of bicubicvalue as a double


% --- Executes during object creation, after setting all properties.
function bicubicvalue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bicubicvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in bicubic.
function bicubic_Callback(hObject, eventdata, handles)
% hObject    handle to bicubic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in tab3.



% --- Executes on button press in selectImage.
function selectImage_Callback(hObject, eventdata, handles)
[File_Name, Path_Name] = uigetfile('PATHNAME')
axes(handles.InitialImage);
imshow([Path_Name,File_Name])
p=([Path_Name,File_Name])
setappdata(0,'picture',p)


% --- Executes on button press in beginoperation.
function beginoperation_Callback(hObject, eventdata, handles)
set(handles.panelimport,          'visible','off')  
set(handles.paneloperate,         'visible','on' ) 
set(handles.paneloutput,          'visible','off')  


% --- Executes on button press in pushbutton34.
function pushbutton34_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in End.
function End_Callback(hObject, eventdata, handles)
set(handles.panelimport,          'visible','off')  
set(handles.paneloperate,         'visible','off' ) 
set(handles.paneloutput,          'visible','off') 



% --- Executes on button press in doneoperate.
function doneoperate_Callback(hObject, eventdata, handles)
set(handles.panelimport,          'visible','off')  
set(handles.paneloperate,         'visible','off' ) 
set(handles.paneloutput,          'visible','on') 


% --- Executes on button press in savenew.
function savenew_Callback(hObject, eventdata, handles)
% hObject    handle to savenew (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function OriginalImage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to OriginalImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate OriginalImage


% --- Executes during object creation, after setting all properties.
function NewImage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NewImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate NewImage


% --- Executes during object creation, after setting all properties.
function InitialImage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to InitialImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate InitialImage
