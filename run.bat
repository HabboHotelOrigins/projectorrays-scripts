:: Navigate to the folder of this script.
cd %cd%

:: Checks if "scripts" folder exists.
if exist .\scripts\ (
    :: Deletes the "scripts" folder with all its contents.
    rd /s /q .\scripts\
)
:: Creates a new empty "scripts" folder.
mkdir .\scripts\

:: Executes the file "projectorrays.exe" for the "files" folder and exports all results in the "scripts" folder.
.\projectorrays.exe decompile .\files\ --dump-scripts -o .\scripts\

:: Checks if "src" folder exists.
if exist .\src\ (
    :: Deletes the "src" folder with all its contents.
    rd /s /q .\src\
)
:: Creates a new empty "src" folder.
mkdir .\src\

:: Moves all files (not folders or files in subfolders) to the new "src" folder.
move .\scripts\*.* .\src\