#!/usr/bin/env bash

sleep 1

i3-msg restart
i3-msg '[class="Alacritty" title="secondary"] move to workspace 11'
i3-msg '[class="Gnome-terminal" title="Package Install"] kill'

sleep 1

i3-msg 'workspace  2'
i3-msg '[class="Gnome-terminal" title="Package Install"] kill'

sleep 1

i3-msg '[class="Gnome-terminal" title="Package Install"] kill'
i3-msg '[class="Google-chrome" title="primary - Google Chrome"] move to workspace 2'
i3-msg '[class="Alacritty" title="secondary"] move container to down'
i3-msg '[class="Alacritty" title="cava"] resize set width 700px'

sleep 1

# i3-msg '[class="Google-chrome" title="secondary - Google Chrome"] move container to up'
i3-msg '[class="Gnome-terminal" title="Package Install"] kill'
i3-msg '[class="discord"] move container to right'
i3-msg '[class="Alacritty" title="primary"] resize set width 1600px'
i3-msg '[class="Google-chrome" title="primary - Google Chrome"] move container to left; move container to left'
i3-msg '[class="Spotify"] resize set height 1100px'

i3-msg 'workspace 1'
