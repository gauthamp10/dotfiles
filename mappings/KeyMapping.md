
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
Alt - h (Cycle windows in a workspace)
Alt - l (Cycle windows in reverse order in a workspace)
Alt - j (Previous workspace)
Alt - k (Next workspace)
Alt - q (Close current focused window)
Alt - r (launch rofi)
Alt - t (launch tilda)
Alt - f (launch vifm)
Alt - v (launch vim)
Alt - b (launch browser)
Alt - m (launch music player)
Alt - s (spotify)
Alt - [0-9] (Go to specific workspace)
Control - Alt - l (launch default terminal)
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
