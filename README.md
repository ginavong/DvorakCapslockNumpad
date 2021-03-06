# Dvorak CapslockNumpad

An Autohotkey script for Windows that lets you emulate a numeric keypad (numpad) on a Dvorak-layout keyboard that doesn't have it. Both NumLock modes are usable.



## Operation

Extract `CapslockNumpad.exe` to anywhere on your computer and run it. The executable does not write anything to your computer.

Press `Alt + CapsLock` to toggle the numpad on and off. Press `CapsLock` to toggle NumLock.

The source code is in `CapsLock_Numpad.ahk` if you want to edit the script, but it will not have the nice icons.

![Key layout diagram](images/keyboard-layout.png)

The tray icon for CapslockNumpad changes colour to indicate the state of the numpad (grey for disabled, blue for enabled). I recommend setting this icon to always be visible in the tray (in Windows 10: Right-click the taskbar → Taskbar settings → Notification area → Select with icons appear on the taskbar). The state of NumLock is in the hover tooltip of the tray icon.



## Acknowledgements

- Forked from [DesiQuintans](https://github.com/DesiQuintans/CapslockNumpad)
- Keyboard layout diagram from <http://www.keyboard-layout-editor.com>
- Base code from [/u/GroggyOtter](https://www.reddit.com/r/AutoHotkey/comments/abyg9b/help_script_for_emulated_numpad_function/)
