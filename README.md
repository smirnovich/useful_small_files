# useful_small_files

This repository I made to store some scripts (bat/m/py) to make FPGA design development a bit easier.
Scripts are made for specific versions and may not work with another one (already checked):
+ **VSCode 1.38.1**
+ **Quartus/SignalTap 18.0**
+ **ModelSim Intel FPGA Edition 10.5b**


Files:
+ **VSCode_quartus.bat** - script to open files or errors in messages panel from Quartus automatically in VSCode with workspace in your project folder. To use it, open Quartus: **Tools -> Options.. -> Prefer Text Editor** Choose **Text editor: Custom**, **Command line:** `"your_folder\VSCode_quartus.bat"  %p %f:%l`
+ **modelsim_compile4vscode.bat** - this script for VSCode is used to compile VHDL-file with ModelSim compiler to check basic syntax. It uses vhdl-2008 flag, but if you work with 93-version, please, delete this flag
+ **modelsim_open4vscode.bat** - this script is made to instantly open ModelSim with already created work.file library and when it opens it is ready to model.

VSCode scripts can be used through task.json, but you should copy it to each workspace which is kinda annoying, so I use it through the **Action Buttons** extension by adding some code to *settings.json* file:
```
"actionButtons": {
        "defaultColor": "#7fb5b5", // Can also use string color names.
        "loadNpmCommands":false, // Disables automatic generation of actions for npm commands.
        "reloadButton":"↻", // Custom reload button text or icon (default ↻). null value enables automatic reload on configuration change
        "commands": [
            {
                "name": "compile VHDL",
                "color": "#a3c6c0",
                "command": "script_folder/modelsim_compile4vscode.bat ${file}", // This is executed in the terminal.
            },
            {
                "name": "Run in Modelsim",
                "color": "#a3c6c0",
                "command": "script_folder/modelsim_open4vscode.bat ${file}",
            }
        ]
```
