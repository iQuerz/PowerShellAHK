# PowerShellAHK
 A customizable light AHK script, allowing PowerShell quick access, Arch Linux Guake Style.

## What does it do?
**The script allows you to bind a certain hotkey or a combination of a few to open/minimize/maximize any program.** The reason why I said Powershell in the script is only my need and intention, therefore, you might change this to anything you want to use it for. Personally, I like the F12 dropdown functionality of Archlinux Guake and I haven't found any articles about re-creating that function on windows, so I figured I'd do it myself. Here's a detailed guide on how to setup everything:

## How to use:
For those who know their stuff, there's a [TL;DR](https://www.autohotkey.com/) on the end of the walkthrough. 
 ### Step 1 (Skip if you have AHK installed)
AutoHotKey(refered to as AHK in the future) is a little tool for running scripts that catch events on your desktop, for example, keyboard input. Using this, we can catch any key combination we'd like for our task and run the proper code. [Download AHK here](https://www.autohotkey.com/). Once you have installed AHK, you can exit the program and kind of forget about it really... We will only interact with ahk script files from now on.


### Step 2
Download the master branch zip of this repository. After unzipping, copy or move the **f12.ahk** file somewhere safe, where it won't disturb you. I recommend $env:UserProfile (for cmd users: %UserProfile%) root, but you can store it anywhere you want really. You can rename it if you please, just remember that if you decide you want to move or rename the script file somewhere else later on, you will need to update the shortcut we are about to create:


### Step 3
Right click on the script file and create a shortcut. Add it to your startup folder (you can usually find it using win + R and typing shell:startup, if that one doesn't work, you can manually locate it in "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\Startup". doesn't exist? no problem, just create one called "Startup"). This will ensure that our script will work on startup, alternatively, you can manually run it just by running the script file(double-click). We're almost done.


### Step 4, I'll show you how you can modify your script:
 **Closing Windows:** Stock script doesn't support closing windows. I use the exit command, although if you want a shortcut for closing active windows, there's a pretty elegant solution. All you have to do is open the script with your prefered text editor and add these lines to the end of the script:
 ```
 !Q::WinClose A
return
```
This will close the active window after pressing alt+Q, I'll provide you with some details on hotkey symbols later. You can also stick with alt+f4, no problem, but I think this one is much more faster and ergonomical for your left hand to trigger. Moving on.

**Changing Triggers:** Open your script for editing. You will notice `!F12::` on line 4. This means that the trigger is alt+F12, and the `::` just starts the code below it. **These scripts _do_ override other shortcuts.** AHK has a list of symbols you can use, for example, changing `!` to `#` will use win+F12 combination instead. Deleting `!` will result in script running by just pressing the F12 key. [Here's the list of symbols you can use](https://www.autohotkey.com/docs/Hotkeys.htm#Symbols).

**"But I don't use Powershell":** Don't worry, we can just change the _.exe_ file in question of the script. By opening our script with a text editor, you'll find a line that says `app = powershell.exe`. Just change `powershell.exe` to the app of your choice, whichever one you use. After that, We'll need to change the 'Run' part of the script down on the 17h line, change the text that goes after `Run, ` to the full path to your app, **_including_** the _.exe_ file. If you want to leave it stock here, but it doesn't work, I highly suggest checking the location of _powershell.exe_ on your specific windows installation and configuring the script properly.

### Step 5, custom window size
I'm only going over this for Powershell. Restart the PC to check if it's working. Press the key combination you set(Default alt+F12) and right click on the title bar of the window, open properties. You can set anything you want, but to make it look like Guake form ArchLinux, we need to set it's location and size, to do that, go to the "Layout" tab. You'll need to play around a bit, I am using 1920x1080 monitor and my settings look like this:
```
Screen Buffer Size:
  Width: 150
  Height: 3000
Window Size:
  Width: 150
  Height: 35
Window Position:
  Left: 360
  Top: 0
  Make sure you uncheck the "Let system position window" checkbox.
```
Done. You can apply the settings and exit the terminal.

### Step 6, transparency
This one is completely subjective and optional. I like my window just a bit transparent, so I could see what's actually happening on my screen behind it. I'm using a small program called [Glass2k](https://chime.tv/products/glass2k.shtml) for this. All you need to do, after installing, is run it, right click on the glass2k icon in taskbar and launch **settings.** Make sure to check the 'Auto Load' and 'Auto Remember' boxes. Open the terminal using the chosen hotkeys and right click on the title bar. A glass2k transparency option bar should appear. I like my terminal on 80% transparency, set it to your liking and close the menu. You can now go ahead and right click the glass2k icon in the taskbar and exit. The windows stay transparent without it.

#### We're done!

## TL;DR:

1 - [install AHK](https://www.autohotkey.com/)

2 - Download master branch, move `f12.ahk` to somewhere you like(we'll need to access it only on startups, via one shortcut)

3 - Add the `f12.ahk` shortcut to your startup folder

4 - Modify the script to your liking

5 - Setup the size and position

6 - Add light transparency to the terminal with [Glass2k](https://chime.tv/products/glass2k.shtml)
