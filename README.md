# useful_small_files

This repository I made to store some scripts (bat/m/py) to make FPGA design development a bit easier.
Scripts are made for specific versions and may not work with another one (already checked):
+ **VSCode 1.38.1**
+ **Quartus/SignalTap 18.0**
+ **ModelSim Intel FPGA Edition 10.5b**


Files:
+ **VSCode_quartus.bat** - script to open files or errors in messages panel from Quartus automatically in VSCode with workspace in your project folder. To use it: **Tools -> Options.. -> Prefer Text Editor** Choose **Text editor: Custom**, **Command line:** `"your_folder\VSCode_quartus.bat"  %p %f:%l`
+ **modelsim_compile4vscode.bat**
+ **modelsim_open4vscode.bat** - script for VSCode to create task
