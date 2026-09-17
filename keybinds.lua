
-- ============================================================
-- Keybinds
-- ============================================================

local mainMod = "SUPER"

-- Programs
local terminal = "kitty"
local fileManager = "thunar"
local menu = "wofi --show drun"

-- ============================================================
-- Applications
-- ============================================================

-- Terminal
hl.bind(
    mainMod .. " + RETURN",
    hl.dsp.exec_cmd(terminal)
)

-- Browser
hl.bind(
    mainMod .. " + B",
    hl.dsp.exec_cmd("xdg-open 'http://'")
)

-- File manager
hl.bind(
    mainMod .. " + E",
    hl.dsp.exec_cmd(fileManager)
)

-- Menu
hl.bind(
    mainMod .. " + D",
    hl.dsp.exec_cmd(menu)
)

-- Rofi configuration menu
hl.bind(
    mainMod .. " + SHIFT + E",
    hl.dsp.exec_cmd(
        "$HOME/.config/hypr/scripts/rofi/configs.sh"
    )
)

-- ============================================================
-- Window management
-- ============================================================

-- Close active window
hl.bind(
    mainMod .. " + Q",
    hl.dsp.window.close()
)

-- Toggle floating
hl.bind(
    mainMod .. " + SPACE",
    hl.dsp.window.float({ action = "toggle" })
)

-- Pseudo-tile
hl.bind(
    mainMod .. " + P",
    hl.dsp.window.pseudo({ action = "toggle" })
)

-- Fullscreen
hl.bind(
    mainMod .. " + F",
    hl.dsp.window.fullscreen({ action = "toggle" })
)

-- ============================================================
-- Window focus
-- ============================================================

hl.bind(
    mainMod .. " + LEFT",
    hl.dsp.focus({ direction = "l" })
)

hl.bind(
    mainMod .. " + RIGHT",
    hl.dsp.focus({ direction = "r" })
)

hl.bind(
    mainMod .. " + UP",
    hl.dsp.focus({ direction = "u" })
)

hl.bind(
    mainMod .. " + DOWN",
    hl.dsp.focus({ direction = "d" })
)

-- ============================================================
-- Workspaces 1-10
-- ============================================================

for i = 1, 9 do
    -- Go to workspace
    hl.bind(
        mainMod .. " + " .. i,
        hl.dsp.focus({ workspace = i })
    )

    -- Move active window to workspace
    hl.bind(
        mainMod .. " + SHIFT + " .. i,
        hl.dsp.window.move({ workspace = i })
    )
end

-- Workspace 10
hl.bind(
    mainMod .. " + 0",
    hl.dsp.focus({ workspace = 10 })
)

hl.bind(
    mainMod .. " + SHIFT + 0",
    hl.dsp.window.move({ workspace = 10 })
)

-- ============================================================
-- Special workspaces
-- ============================================================

-- Toggle default special workspace
hl.bind(
    mainMod .. " + S",
    hl.dsp.workspace.toggle_special("magic")
)

-- Toggle special workspace 2
hl.bind(
    mainMod .. " + X",
    hl.dsp.workspace.toggle_special("2")
)

-- Move active window to special workspace 2
hl.bind(
    mainMod .. " + SHIFT + X",
    hl.dsp.window.move({
        workspace = "special:2"
    })
)

-- ============================================================
-- Workspace scrolling
-- ============================================================

-- Previous workspace
hl.bind(
    mainMod .. " + mouse_down",
    hl.dsp.focus({
        workspace = "r-1"
    })
)

-- Next workspace
hl.bind(
    mainMod .. " + mouse_up",
    hl.dsp.focus({
        workspace = "r+1"
    })
)

-- Next workspace with Tab
hl.bind(
    mainMod .. " + TAB",
    hl.dsp.focus({
        workspace = "m+1"
    })
)

-- ============================================================
-- Center window
-- ============================================================

hl.bind(
    mainMod .. " + C",
    hl.dsp.exec_cmd("hyprctl dispatch centerwindow")
)

-- ============================================================
-- Mouse window movement
-- ============================================================

hl.bind(
    mainMod .. " + mouse:272",
    hl.dsp.window.drag(),
    { mouse = true, drag = true }
)

-- ============================================================
-- Mouse window resizing
-- ============================================================

hl.bind(
    mainMod .. " + mouse:273",
    hl.dsp.window.resize(),
    { mouse = true, drag = true }
)

-- ============================================================
-- Multimedia
-- ============================================================

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- ============================================================
-- Media player
-- ============================================================

hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })


-- ============================================================
-- Custom scripts
-- ============================================================

-- Screenshot
hl.bind(
    "PRINT",
    hl.dsp.exec_cmd(
        "$HOME/.config/hypr/scripts/general/screenshot.sh"
    ), { locked = true }
)

-- Custom script
hl.bind(
    mainMod .. " + U",
    hl.dsp.exec_cmd(
        "$HOME/.config/hypr/scripts/general/custom.sh"
    ), { locked = true }
)