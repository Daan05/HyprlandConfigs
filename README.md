configuration {
    modi: "run,drun,window";
    icon-theme: "Papirus Dark";
    show-icons: true;
    terminal: "alacritty";
    drun-display-format: "{icon} {name}";
    location: 0;
    disable-history: false;
    hide-scrollbar: true;
    display-drun: " 󰀻  Apps ";
    display-run: "   Run ";
    display-window: "   Windows";
    display-Network: " 󰤨  Network";
    sidebar-mode: true;
}

//@theme "/nix/store/js0rnlgk75w4zx68d5i0hrgfnlkx8610-rofi-1.7.5+wayland3/share/rofi/themes/fancy2.rasi"

//@theme "/nix/store/js0rnlgk75w4zx68d5i0hrgfnlkx8610-rofi-1.7.5+wayland3/share/rofi/themes/fancy.rasi"

@theme "~/.config/rofi/theme.rasi"

-------------------------------------------------------------------------------------

// define colors etc.
* {
    bg: #202020;
    hv: #DDDDDD; 
    primary: #FFFFFF; 
    ug: #FF0000;
    font: "Monospace 11";
    background-color: @bg;
    //dark: @bg;
    border: 0px;
    kl: #FFFFFF;
    black: #000000;

    transparent: rgba(46,52,64,0);
}

// defines different aspects of the window
window {
    width: 1000;
    height: 800;

    orientation: horizontal;
    location: center;
    anchor: center;
    transparency: "screenshot";
    border-color: @transparent;   
    border: 0px;
    border-radius: 6px;
    spacing: 0;
    children: [ mainbox ];
}

mainbox {
    spacing: 0;
    children: [ inputbar, message, listview ];
}

inputbar {
    color: @kl;
    padding: 11px;
    border: 3px 3px 2px 3px;
    border-color: #606060;
    border-radius: 6px 6px 0px 0px;
}

message {
    padding: 0;
    border-color: @primary;
    border: 0px 1px 1px 1px;
}

entry, prompt, case-indicator {
    text-font: inherit;
    text-color: inherit;
}

entry {
    cursor: pointer;
}

prompt {
    margin: 0px 5px 0px 0px;
}

listview {
    layout: vertical;
    //spacing: 5px;
    padding: 8px;
    lines: 7;
    columns: 1;
    border: 0px 3px 3px 3px; 
    border-radius: 0px 0px 6px 6px;
    border-color: #606060;
    dynamic: false;
}

element {
    padding: 2px;
    vertical-align: 1;
    color: @kl;
    font: inherit;
}

element-text {
    background-color: inherit;
    text-color: inherit;
    vertical-align: 0.5;
}

element selected.normal {
    color: @black;
    background-color: @hv;
}

element normal active {
    background-color: @hv;
    color: @black;
}

element-icon {
    background-color: inherit;
    text-color: inherit;
    size: 2.5em;
}

element normal urgent {
    background-color: @primary;
}

element selected active {
    background: @hv;
    foreground: @bg;
}

button {
    padding: 6px;
    color: @primary;
    horizonatal-align: 0.5;

    border: 2px 0px 2px 2px;
    border-radius: 4px 0px 0px 4px;
    border-color: @primary;
}

button selected normal {
    border: 2px 0px 2px 2px;
    border-color: @primary;
}
