#!/bin/bash

sleep 1

i3-msg '[class="Google-chrome" title="primary - Google Chrome"] move to workspace 1'
i3-msg '[class="Alacritty" title="secondary"] move to workspace 10'

sleep 2

i3-msg '[class="Alacritty" title="secondary"] move container to down'
i3-msg '[class="Google-chrome" title="primary - Google Chrome"] move container to left; move container to left'

