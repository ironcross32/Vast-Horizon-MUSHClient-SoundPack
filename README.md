# Vast Horizon MUSHClient SoundPack
 A sound pack for blind or visually impaired players of the Sci-Fi MUD known as Vast Horizon.
### Introduction

This pack will allow you to experience Vast Horizon with sound. For now, it is required that you have MUSH-Z and complete the following steps to install the pack.
1. Copy and paste the folder to your Documents\Mush-Z\worlds.
2. Open up MUSH-Z and make sure you have following plugins in your plugins list.
    1. MushReader
    2. output_functions
    3. channel_history
    4. LuaAudio

### How Do I Load Plugins Into A World?

There are two ways to do this, globally, and per-world. As the name suggests, loading plugins globally will make sure they are available for every world. It doesn't matter whether you open old worlds, or create new ones, they will be available.

Per-world is just that. You are loading plugins into the client for that world, and that world only. Let's discuss both methods.

Since it's a good idea to have at least MushReader globalized, let's start there. Here are the steps you can take.
1. Press ALT+F then G, or use the shortcut ALT+CTRL+G to open the global preferences dialog
2. Navigate to the plugin tabs by using either of the following methods
    1. Press SHIFT+TAB to jump to the tab list, then press END then finally LEFT ARROW to find the plugins tab
    2. Press CTRL+SHIFT+TAB twice, which lands you on the plugins tab
3. Press ALT+A or find the, "Add" button and browse for the plugin(s) you'd like to add
4. Tab to the, "Ok" button and press enter or space to save the changes and close the dialog

N.B. The browser is multi-select enabled, so standard windows methods of selecting items either contiguously or noncontiguously will work both in the global, and per-world dialogs. Namely SHIFT+Arrow keys or holding control then pressing space to toggle the state, then with control still held, arrowing down the list and pressing space on each item you'd like to select.

To load plugins on a per-world basis, do the following

1. Ensure that a world is open in MUSH-Z or MUSHClient
2. Press ALT+F then U or use the shortcut CTRL+SHIFT+P to jump directly to the Plugins dialog
3. Tab to the Add button, or press ALT+A to access it directly
4. Browse to the plugin(s) you'd like to add and select them
5. Tab to the Close button and press enter or space on it; alternatively, press escape as the work of adding them is already done at this point

### Features
#### Volume Controls

The pack has three volume categories at this time. They are: global volume, ambience volume, and communication volume. The process of adjusting the volume for one of these categories is simple. First, press F7 to cycle through the available categories until you reach the one you want. Then, press F5 to lower the volume, and F6 to raise it.

You will be told the name of the category and the current value as you cycle through them, and the value upon raising or lowering the the selected category.

### What If I Encounter A Problem While Using The Pack?
The first thing to do is make sure all the plugins are loaded, as described above. If you can verify that this is indeed so, create an issue describing your dilemma. Issues should encompass the problem, include any tracebacks that may have been given, and describe in exact steps how to reproduce the bug.