# NoMenuBar

NoMenuBar is a simple application that disables* top menu bar on MacOS. MacOS allows you to temporarily hide menu bar but there is no way to disable it completely or toggle it.

\* *It doesn't actually disable the bar. For more info check how it works section!*

## Installation
### Precompiled
Download **NoMenuBar.app** from release section and move it to `/Applications`
### Compiling 

Clone the repository and:

For creating and installing NoMenuBar.app
```
$ make install
```

For creating NoMenuBar executable binary
```
$ make executable
```

For creating NoMenuBar.app
```
$ make
```

Check `build` folder for the compiled application.

## Usage
**Step 1:** Enable menu bar auto hide from `System Preferences > Dock and Menu Bar > Automatically show and hide menu bar`.

**Step 2:** Simply run the NoMenuBar.app or execute the NoMenuBar binary.

## Recommended
You can show the menu bar when needed by pressing `Ctrl + f2`. You can rebind this to other easy-to-reach keys from `System Preferences > Keyboard > Shortcuts > Keyboard > Move focus to the menu bar`.

## How It Works
MacOS allows you to autohide the menu bar. But it gets triggered if we move our cursor above 3px on the top. We take the advantage of this by preventing the cursor from going above 5px.
