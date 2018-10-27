function varargout = inputgui(varargin)
% INPUTGUI MATLAB code for inputgui.fig
%      INPUTGUI, by itself, creates a new INPUTGUI or raises the existing
%      singleton*.
%
%      H = INPUTGUI returns the handle to a new INPUTGUI or the handle to
%      the existing singleton*.
%
%      INPUTGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INPUTGUI.M with the given input arguments.
%
%      INPUTGUI('Property','Value',...) creates a new INPUTGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before inputgui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to inputgui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES
 
% Edit the above text to modify the response to help inputgui
 
% Last Modified by GUIDE v2.5 18-Apr-2017 01:46:29
 
% Begin initialization code - DO NOT EDIT
 
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @inputgui_OpeningFcn, ...
                   'gui_OutputFcn',  @inputgui_OutputFcn, ...
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
 
 
% --- Executes just before inputgui is made visible.
function inputgui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to inputgui (see VARARGIN)
 
% Choose default command line output for inputgui
handles.output = hObject;
% create an axes that spans the whole gui
%ah = axes('unit', 'normalized', 'position', [0 0 1 1]); 
% import the background image and show it on the axes
%bg = imread('back.jpg'); imagesc(bg);
% prevent plotting over the background and turn the axis off
%set(ah,'handlevisibility','off','visible','off')
% making sure the background is behind all the other uicontrols
%uistack(ah, 'bottom');
% Update handles structure
guidata(hObject, handles);
 
% UIWAIT makes inputgui wait for user response (see UIRESUME)
% uiwait(handles.figure1);
 
 
% --- Outputs from this function are returned to the command line.
function varargout = inputgui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Get default command line output from handles structure
varargout{1} = handles.output;
 

function RoomLength_Callback(hObject, eventdata, handles)
a=get(hObject,'String');
b=str2num(a);
if(isempty(b) || mod(b,1)~=0)
    warndlg('Distance must be an integer!');
    set(handles.RoomLength,'String',' ');
end
if(b>18 || b<8)
    warndlg('Enter realistic value!');
    set(handles.RoomLength,'String',' ');
end
handles.var10=b;
guidata(hObject,handles);

 
% hObject    handle to RoomLength (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of RoomLength as text
%        str2double(get(hObject,'String')) returns contents of RoomLength as a double
 
 
% --- Executes during object creation, after setting all properties.
function RoomLength_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RoomLength (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function RoomBreadth_Callback(hObject, eventdata, handles)
c=get(hObject,'String');
d=str2num(c);
if(d>18 || d<8)
    warndlg('Enter realistic value!');
    set(handles.RoomBreadth,'String','');
end
if(isempty(d) || mod(d,1)~=0)
    warndlg('Distance must be an integer!');
    set(handles.RoomBreadth,'String','');
end
handles.var11=d;
guidata(hObject,handles);
 
% hObject    handle to RoomBreadth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of RoomBreadth as text
%        str2double(get(hObject,'String')) returns contents of RoomBreadth as a double
 
 
% --- Executes during object creation, after setting all properties.
function RoomBreadth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RoomBreadth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
function RDoorUnits_Callback(hObject, eventdata, handles)
e=get(hObject,'String');
f=str2num(e);
if(isempty(f) || mod(f,1)~=0)
    warndlg('Distance must be an integer!');
    set(handles.RDoorUnits,'String',' ');
end
handles.var9=f;
guidata(hObject,handles);
 
% hObject    handle to RDoorUnits (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of RDoorUnits as text
%        str2double(get(hObject,'String')) returns contents of RDoorUnits as a double
 
 
% --- Executes during object creation, after setting all properties.
function RDoorUnits_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RDoorUnits (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function BDoorUnits_Callback(hObject, eventdata, handles)
g=get(hObject,'String');
h=str2num(g);
if(isempty(h) || mod(h,1)~=0)
    warndlg('Distance must be an integer!');
end
handles.var8=h;
guidata(hObject,handles);
 
% hObject    handle to BDoorUnits (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of BDoorUnits as text
%        str2double(get(hObject,'String')) returns contents of BDoorUnits as a double
 
 
% --- Executes during object creation, after setting all properties.
function BDoorUnits_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BDoorUnits (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
% --- Executes on selection change in BDStart.
function BDStart_Callback(hObject, eventdata, handles)
contents = cellstr(get(hObject,'String'));
o=contents{get(hObject,'Value')};
p=str2num(o);
 
handles.var3 = p;
%disp(handles.var1)
guidata(hObject,handles)
 
% hObject    handle to BDStart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: contents = cellstr(get(hObject,'String')) returns BDStart contents as cell array
%        contents{get(hObject,'Value')} returns selected item from BDStart
 
 
% --- Executes during object creation, after setting all properties.
function BDStart_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BDStart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
% --- Executes on selection change in RDStart.
function RDStart_Callback(hObject, eventdata, handles)
contents = cellstr(get(hObject,'String'));
%l=contents{get(hObject,'Value')};
k=contents{get(hObject,'Value')};
l=str2num(k);
handles.var1 = l;
guidata(hObject,handles)
 
% hObject    handle to RDStart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: contents = cellstr(get(hObject,'String')) returns RDStart contents as cell array
%        contents{get(hObject,'Value')} returns selected item from RDStart
 
 
% --- Executes during object creation, after setting all properties.
function RDStart_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RDStart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
% --- Executes on selection change in RDEnd.
function RDEnd_Callback(hObject, eventdata, handles)
contents = cellstr(get(hObject,'String'));
%n=contents{get(hObject,'Value')};
m=contents{get(hObject,'Value')};
n=str2num(m);
handles.var2 = n;
guidata(hObject,handles)
 
 
 
% hObject    handqle to RDEnd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: contents = cellstr(get(hObject,'String')) returns RDEnd contents as cell array
%        contents{get(hObject,'Value')} returns selected item from RDEnd
 
 
% --- Executes during object creation, after setting all properties.
function RDEnd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RDEnd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
% --- Executes on selection change in BDEnd.
function BDEnd_Callback(hObject, eventdata, handles)
contents = cellstr(get(hObject,'String'));
q=contents{get(hObject,'Value')};
r=str2num(q);
 
handles.var4 = r;
guidata(hObject,handles)
 
% hObject    handle to BDEnd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: contents = cellstr(get(hObject,'String')) returns BDEnd contents as cell array
%        contents{get(hObject,'Value')} returns selected item from BDEnd
 
 
% --- Executes during object creation, after setting all properties.
function BDEnd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BDEnd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function WUnits_Callback(hObject, eventdata, handles)
i=get(hObject,'String');
j=str2num(i);
if(isempty(j) || mod(j,1)~=0)
    warndlg('Distance must be an integer!');
end
handles.var7=j;
guidata(hObject,handles);

 
% hObject    handle to WUnits (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of WUnits as text
%        str2double(get(hObject,'String')) returns contents of WUnits as a double
 
 
% --- Executes during object creation, after setting all properties.
function WUnits_CreateFcn(hObject, eventdata, handles)
% hObject    handle to WUnits (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
% --- Executes on selection change in WStart.
function WStart_Callback(hObject, eventdata, handles)
contents = cellstr(get(hObject,'String'));
s=contents{get(hObject,'Value')};
t=str2num(s);

handles.var5 = t;

guidata(hObject,handles)
% hObject    handle to WStart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: contents = cellstr(get(hObject,'String')) returns WStart contents as cell array
%        contents{get(hObject,'Value')} returns selected item from WStart
 
 
% --- Executes during object creation, after setting all properties.
function WStart_CreateFcn(hObject, eventdata, handles)
% hObject    handle to WStart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
% --- Executes on selection change in WEnd.
function WEnd_Callback(hObject, eventdata, handles)
contents = cellstr(get(hObject,'String'));
u=contents{get(hObject,'Value')};
v=str2num(u);
 
handles.var6 = v;
guidata(hObject,handles)
% hObject    handle to WEnd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: contents = cellstr(get(hObject,'String')) returns WEnd contents as cell array
%        contents{get(hObject,'Value')} returns selected item from WEnd
 
 
% --- Executes during object creation, after setting all properties.
function WEnd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to WEnd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
% --- Executes on button press in SubmitButton.
function SubmitButton_Callback(hObject, eventdata, handles)

RL = str2num(char(get(handles.RoomLength,'String')));
RB = str2num(char(get(handles.RoomBreadth,'String')));
RDU = str2num(char(get(handles.RDoorUnits,'String')));
BDU = str2num(char(get(handles.BDoorUnits,'String')));
WU = str2num(char(get(handles.WUnits,'String')));

l=handles.var1;
n=handles.var2;
p=handles.var3;
r=handles.var4;
t=handles.var5;
v=handles.var6;
j=handles.var7;
h=handles.var8;
f=handles.var9;
b=handles.var10;
d=handles.var11;
if(((l==1) && (n==3)) || ((l==2) && (n==4)) || ((l==3) && (n==1)) || ((l==4) && (n==2)) || ((l==1) && (n==1)) || ((l==2) && (n==2)) || ((l==3) && (n==3)) || ((l==4) && (n==4)))
    warndlg('Choose adjacent corner!');
end
if(((p==1) && (r==3)) || ((p==2) && (r==4)) || ((p==3) && (r==1)) || ((p==4) && (r==2)) || ((p==1) && (r==1)) || ((p==2) && (r==2)) || ((p==3) && (r==3)) || ((p==4) && (r==4)))
    warndlg('Choose adjacent corner!');
end
if(((t==1) && (v==3)) || ((t==2) && (v==4)) || ((t==3) && (v==1)) || ((t==4) && (v==2)) || ((t==1) && (v==1)) || ((t==2) && (v==2)) || ((t==3) && (v==3)) || ((t==4) && (v==4)))
    warndlg('Choose adjacent corner!');
end

% room entry door
if((l==1 && n==2)||(l==3 && n==4)||(l==2 && n==1)||(l==4 && n==3))
    if(((f+3)>d))
        warndlg('Incorrect Data for Room entry door!');  
        set(handles.RDoorUnits,'String',' ');
    end
end
if((l==1 && n==4)||(l==3 && n==2)||(l==2 && n==3)||(l==4 && n==1))
    if(((f+3)>b))
        warndlg('Incorrect Data for Room entry door!');   
        set(handles.RDoorUnits,'String',' ');
    end
end 

% bathroom entry door
if((p==1 && r==2)||(p==3 && r==4)||(p==2 && r==1)||(p==4 && r==3))
    if(((h+3)>d))
        warndlg('Incorrect Data for Bathroom entry door!');
        set(handles.BDoorUnits,'String',' ');
    end
end
if((p==1 && r==4)||(p==3 && r==2)||(p==2 && r==3)||(p==4 && r==1))
    if(((h+3)>b))
        warndlg('Incorrect Data for Bathroom entry door!');  
        set(handles.BDoorUnits,'String',' ');
    end
end 

% window
if((t==1 && v==2)||(t==3 && v==4)||(t==2 && v==1)||(t==4 && v==3))
    if(((j+5)>d))
        warndlg('Incorrect Data for window!'); 
        set(handles.WUnits,'String',' ');
    end
end
if((t==1 && v==4)||(t==3 && v==2)||(t==2 && v==3)||(t==4 && v==1))
    if(((j+5)>b))
        warndlg('Incorrect Data for window!');  
        set(handles.WUnits,'String',' ');
    end
end 
   chrom(RL,RB,RDU,l,n,BDU,p,r,WU,t,v)

% hObject    handle to SubmitButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% --- Executes during object creation, after setting all properties.


% --- Executes during object creation, after setting all properties.
function axes4_CreateFcn(hObject, eventdata, handles)
 imshow('rect.png');
 axis off;
% hObject    handle to axes4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes4


 
