function varargout = I_HAVE_TRIED(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @I_HAVE_TRIED_OpeningFcn, ...
                   'gui_OutputFcn',  @I_HAVE_TRIED_OutputFcn, ...
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


% --- Executes just before I_HAVE_TRIED is made visible.
function I_HAVE_TRIED_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);


function varargout = I_HAVE_TRIED_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;
