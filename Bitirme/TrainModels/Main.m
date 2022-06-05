function varargout = Main(varargin)
% MAIN MATLAB code for Main.fig
%      MAIN, by itself, creates a new MAIN or raises the existing
%      singleton*.
%
%      H = MAIN returns the handle to a new MAIN or the handle to
%      the existing singleton*.,handles,...) calls the local
%      function named CALLBACK in MAI
%
%      MAIN('CALLBACK',hObject,eventDataN.M with the given input arguments.
%
%      MAIN('Property','Value',...) creates a new MAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Main_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Main_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Main

% Last Modified by GUIDE v2.5 27-May-2022 23:38:32

% Begin initialization code - DO NOT EDIT
global degisken;
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Main_OpeningFcn, ...
                   'gui_OutputFcn',  @Main_OutputFcn, ...
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

end
% --- Executes just before Main is made visible.
function Main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Main (see VARARGIN)

% Choose default command line output for Main
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Main wait for user response (see UIRESUME)
% uiwait(handles.figure1);

end
% --- Outputs from this function are returned to the command line.
function varargout = Main_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
end

% --- Executes on selection change in modelchoise.
function modelchoise_Callback(hObject, eventdata, handles)
% hObject    handle to modelchoise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns modelchoise contents as cell array
%        contents{get(hObject,'Value')} returns selected item from modelchoise
% --- Executes during object creation, after setting all properties.

end

function modelchoise_CreateFcn(hObject, eventdata, handles)
% hObject    handle to modelchoise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
end

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

end
% --- Executes on selection change in classchoise.
function classchoise_Callback(hObject, eventdata, handles)
% hObject    handle to classchoise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns classchoise contents as cell array
%        contents{get(hObject,'Value')} returns selected item from classchoise
end

% --- Executes during object creation, after setting all properties.
function classchoise_CreateFcn(hObject, eventdata, handles)
% hObject    handle to classchoise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

end
% --- Executes on selection change in folderchoise.
function folderchoise_Callback(hObject, eventdata, handles)
% hObject    handle to folderchoise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns folderchoise contents as cell array
%        contents{get(hObject,'Value')} returns selected item from folderchoise
end

% --- Executes during object creation, after setting all properties.
function folderchoise_CreateFcn(hObject, eventdata, handles)
% hObject    handle to folderchoise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on selection change in parameterschoise.
function parameterschoise_Callback(hObject, eventdata, handles)
% hObject    handle to parameterschoise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns parameterschoise contents as cell array
%        contents{get(hObject,'Value')} returns selected item from parameterschoise
% --- Executes during object creation, after setting all properties.
end
function parameterschoise_CreateFcn(hObject, eventdata, handles)
% hObject    handle to parameterschoise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

end
% --- Executes on selection change in numberofsteppopup.
function numberofsteppopup_Callback(hObject, eventdata, handles)
% hObject    handle to numberofsteppopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns numberofsteppopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from numberofsteppopup
end

% --- Executes during object creation, after setting all properties.
function numberofsteppopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numberofsteppopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on selection change in batchsizepopup.
function batchsizepopup_Callback(hObject, eventdata, handles)
% hObject    handle to batchsizepopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns batchsizepopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from batchsizepopup

end
% --- Executes during object creation, after setting all properties.
function batchsizepopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to batchsizepopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

end

function trainratiotext_Callback(hObject, eventdata, handles)
% hObject    handle to trainratiotext (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of trainratiotext as text
%        str2double(get(hObject,'String')) returns contents of trainratiotext as a double

end
% --- Executes during object creation, after setting all properties.
function trainratiotext_CreateFcn(hObject, eventdata, handles)
% hObject    handle to trainratiotext (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end

% --- Executes on selection change in trainmodelspopup.
function trainmodelspopup_Callback(hObject, eventdata, handles)
% hObject    handle to trainmodelspopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns trainmodelspopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from trainmodelspopup
end

% --- Executes during object creation, after setting all properties.
function trainmodelspopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to trainmodelspopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on selection change in imagespopup.
function imagespopup_Callback(hObject, eventdata, handles)
% hObject    handle to imagespopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns imagespopup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from imagespopup
end

% --- Executes during object creation, after setting all properties.
function imagespopup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to imagespopup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on selection change in foldertestchoise.
function foldertestchoise_Callback(hObject, eventdata, handles)
% hObject    handle to foldertestchoise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns foldertestchoise contents as cell array
%        contents{get(hObject,'Value')} returns selected item from foldertestchoise
end

% --- Executes during object creation, after setting all properties.
function foldertestchoise_CreateFcn(hObject, eventdata, handles)
% hObject    handle to foldertestchoise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on selection change in modelchosie.
function modelchosie_Callback(hObject, eventdata, handles)
% hObject    handle to modelchosie (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns modelchosie contents as cell array
%        contents{get(hObject,'Value')} returns selected item from modelchosie
display(handles)
set(handles.modelchosie,'Value');
end

% --- Executes during object creation, after setting all properties.
function modelchosie_CreateFcn(hObject, eventdata, handles)
% hObject    handle to modelchosie (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on selection change in classchoise.
function popupmenu11_Callback(hObject, eventdata, handles)
% hObject    handle to classchoise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns classchoise contents as cell array
%        contents{get(hObject,'Value')} returns selected item from classchoise

end
% --- Executes during object creation, after setting all properties.
function popupmenu11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to classchoise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on selection change in datasetchoise.
function datasetchoise_Callback(hObject, eventdata, handles)
% hObject    handle to datasetchoise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns datasetchoise contents as cell array
%        contents{get(hObject,'Value')} returns selected item from datasetchoise

end

% --- Executes during object creation, after setting all properties.
function datasetchoise_CreateFcn(hObject, eventdata, handles)
% hObject    handle to datasetchoise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on selection change in parameterchoise.
function parameterchoise_Callback(hObject, eventdata, handles)
% hObject    handle to parameterchoise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns parameterchoise contents as cell array
%        contents{get(hObject,'Value')} returns selected item from parameterchoise
end

% --- Executes during object creation, after setting all properties.
function parameterchoise_CreateFcn(hObject, eventdata, handles)
% hObject    handle to parameterchoise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

end
% --- Executes on selection change in numberofsteps.
function numberofsteps_Callback(hObject, eventdata, handles)
% hObject    handle to numberofsteps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns numberofsteps contents as cell array
%        contents{get(hObject,'Value')} returns selected item from numberofsteps
end

% --- Executes during object creation, after setting all properties.
function numberofsteps_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numberofsteps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on selection change in batchsize.
function batchsize_Callback(hObject, eventdata, handles)
% hObject    handle to batchsize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns batchsize contents as cell array
%        contents{get(hObject,'Value')} returns selected item from batchsize

end
% --- Executes during object creation, after setting all properties.
function batchsize_CreateFcn(hObject, eventdata, handles)
% hObject    handle to batchsize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end


function trainratio_Callback(hObject, eventdata, handles)
% hObject    handle to trainratio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of trainratio as text
%        str2double(get(hObject,'String')) returns contents of trainratio as a double
end

% --- Executes during object creation, after setting all properties.
function trainratio_CreateFcn(hObject, eventdata, handles)
% hObject    handle to trainratio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
display(handles.modelchosie.Value);
if get(handles.modelchosie,'Value')== 2
    googlenet_work()
elseif get(handles.modelchosie,'Value')== 3
    squuzeenet()
elseif get(handles.modelchosie,'Value')== 4
    alexnet()
end

end
% --- Executes on button press in imagechoise.
function imagechoise_Callback(hObject, eventdata, handles)
% hObject    handle to imagechoise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global image
[filename , pathname]=uigetfile();
if filename == 0
    msgbox(sprintf('Lütfen Bir Dosya Seçiniz') , 'Hata' , 'Error');
end
image = imread(filename);
imshow(image);
end
