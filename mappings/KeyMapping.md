# Keybindings

### Make Capslock none
```
setxkbmap -option caps:none
```

### Map Alt to Capslock key
```
xmodmap -e "keycode 66 = Alt_R NoSymbol Alt_R"
```

### Window & Workspace
```
Alt - j (Cycle windows in a workspace)
Alt - k (Cycle windows in reverse order in a workspace)
Alt - l (Next workspace)
Alt - h (Previous workspace)
alt - ; (launch rofi)
alt - t (launch terminal with tmux)
alt - m (launch vifm)
Alt - v (launch vim)
Alt - b (launch browser)
Alt - s (spotify)
Alt - Enter (launch tilda)
Alt - [0-9] (Go to specific workspace)
Super - l (Lockscreen)
```

### Vimium
```
j - Scroll down
k - Scroll up
J - Go to previous tab
K - Go to next tab
l - Scroll right
h - Scroll left
L - Go forward in history
H - Go back in history
x - Close current tab
X - Restore last closed tab
d - Scroll half page down
e - Scroll half page up
gg - Scroll to the top of the page
G - Scroll to the bottom of the page 
f - Open a link in the current tab
F - Open a link in the new tab
o - Open URL, bookmark or history entry
O - Open URL, bookmark or history entry in a new tab
gi - Focus the first text input on the page
r - reload current tab
v - Visual mode
yy - Copy the current URL to the clipboard
/ - Enter find mode
n - Cycle forward to the next find match
N - Cycle backward to the previous find match
```

### Vimium custom keymap
```
map e scrollPageUp
```
