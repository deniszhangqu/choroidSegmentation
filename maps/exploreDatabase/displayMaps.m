function displayMaps(dirlist)

if ispc
    dirlist = fullfile([filesep filesep 'HMR-BRAIN'],dirlist);
elseif ismac
    dirlist = fullfile([filesep 'Volumes'],dirlist);
else
    dirlist = fullfile(filesep,'srv','samba',dirlist);
end

for d = 1:numel(dirlist)

eval(['!open -a Preview ''' fullfile(dirlist{d},'Results','MapMovieNew.gif') ''''])

disp(fullfile(dirlist{d},'Results','MapMovieNew.gif'))

    
disp([num2str(d) ' - Return to proceed . . . '])
pause
    
end