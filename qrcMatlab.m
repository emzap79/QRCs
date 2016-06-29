%% Data and File Management
% Functions

dir    % List folder contents
ls    % List folder contents
pwd    % Identify current folder
fileattrib    % Set or get attributes of file or folder
exist    % Check existence of variable, function, folder, or class
isdir    % Determine whether input is folder
type    % Display contents of file
visdiff    % Compare two text files, MAT-Files, binary files, Zip files, or folders
what    % List MATLAB files in folder
which    % Locate functions and files
cd    % Change current folder
copyfile    % Copy file or folder
delete    % Remove files or objects
recycle    % Set option to move deleted files to recycle folder
mkdir    % Make new folder
movefile    % Move file or folder
rmdir    % Remove folder
open    % Open file in appropriate application
winopen    % Open file in appropriate application (Windows)


%% Slice and Extract Data
% Alphabetic Array
i = ('a':'z').'
a = 'foo';
AA = cell(10,1);
AA{1,1} = a;

% Read from Excel
[num,txt,raw] = xlsread('portfolio.xlsx','B:B');

% Read from Text/CSV files
% http://de.mathworks.com/help/matlab/standard-file-formats.html
importdata('input.txt',',',n)   % All file formats, n is number of rows
dlmread('input.txt', ',', n)    % Read ASCII numbered files
csvread(filename,R1,C1)         % reads data from the file starting at row 
                                % offset R1 and column offset C1. For example, 
                                % the offsets R1=0, C1=0 specify the first value in the file.
readtable('input.txt','Delimiters','ReadVariableNames',false) % Read as Table
[A,B,C,. . .] = textread(filename,format)   % eg. file = textread('fft.m',...
                                            % '%s', 'delimiter', '\n', ...
                                            % 'whitespace', '');
A = scanstr(obj,'delimiter','format')       % Read data from instrument, format as text, and parse

% Structures
Str(1,1).foo = 5
Str(1,1).bar = 'xyz'
Str(1,2).bar = 'abc'

% Regexpressions
pattern = 'k(ilo)?m(eters)?(/|\sper\s)h(r|our)?';
text = ['The high-speed train traveled at 250 ', ...
'kilometers per hour alongside the automobile ', ...
'travelling at 120 km/h.'];
regexp(text, pattern, 'match')

%% Object format transformation
% Missing commands
cell2mat  % convert cell to cell's content format
num2cell  % convert double to cell
isnan     % returns boolean NaN's isnan([1 1 NaN NaN])
isempty   % boolean empty cells
strjoin   % Join strings in cell array into single string
datestr   % cellstr(datestr(sie.Date,'dd.mm.yyyy'))
cellstr   % Convert Character Array to Cell Array of Strings
% % http://de.mathworks.com/help/matlab/ref/cellstr.html#examples
% S = ['abc ';'defg';'hi  ']; whos S
% C = cellstr(S); whos C
upper, lower    % convert string to uppercase, lowercase
fullfile(a,b)   % builds a full file specification, f, from the folders and 
                % file names specified
addpath(folderName1,. . .,folderNameN) % adds the specified folders to the 
                                       % top of the search path. Use addpath 
                                       % statements in a startup.m file to 
                                       % modify the search path programmatically at startup.
strcat(picture,'.jpg')                 % adds suffix 'jpg' to every cell 
                                       % entry eg. picture = {'IMG001', 'IMG002', 'IMG003', 'IMG004'};
regexp('foo2015','([0-9]+)','match')   % match all digits inside foo2015
strrep('foo2015','o','a')              % replace 'o' in 'foobar' with 'a'
                    

%% Functions
% % Remove empty cells from array
% % http://www.mathworks.com/matlabcentral/answers/27042-how-to-remove-empty-cell-array-contents
foo(~cellfun('isempty',foo))

% Measure processing time of a code fragment
tic
% >> code here
toc