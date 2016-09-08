--------------------------------------------------------------------------------
-- Configuration

-- hs.window.animationDuration = 0
-- hs.window.setShadows(false)


--------------------------------------------------------------------------------
-- Window management

-- Return screen frame available for window placement
function currentScreenFrame()
    return hs.screen.mainScreen():frame()
end

function windowLeft()
    local frame = currentScreenFrame()
    frame.x = 0
    frame.w = frame.w / 2
    return frame
end

function windowOneThirdLeft()
    local frame = currentScreenFrame()
    frame.x = 0
    frame.w = frame.w / 3
    return frame
end

function windowTwoThirdsLeft()
    local frame = currentScreenFrame()
    frame.x = 0
    frame.w = 2 * frame.w / 3
    return frame
end

function windowRight()
    local frame = currentScreenFrame()
    frame.x = frame.w / 2
    frame.w = frame.w / 2
    return frame
end

function windowOneThirdRight()
    local frame = currentScreenFrame()
    frame.x = 2 * frame.w / 3
    frame.w = frame.w / 3
    return frame
end

function windowTwoThirdsRight()
    local frame = currentScreenFrame()
    frame.x = frame.w / 3
    frame.w = 2 * frame.w / 3
    return frame
end

function windowTop()
    local frame = currentScreenFrame()
    frame.y = 0
    frame.h = frame.h / 2
    return frame
end

function windowBottom()
    local frame = currentScreenFrame()
    frame.y = frame.h / 2
    frame.h = frame.h / 2
    return frame
end

local windowHyper = {"cmd", "shift"}

hs.hotkey.bind(windowHyper, "1", function()
    hs.window.focusedWindow():setFrame(windowOneThirdLeft(), 0)
end)

hs.hotkey.bind(windowHyper, "2", function()
    hs.window.focusedWindow():setFrame(windowTwoThirdsLeft(), 0)
end)

hs.hotkey.bind(windowHyper, "8", function()
    hs.window.focusedWindow():setFrame(currentScreenFrame(), 0)
end)

hs.hotkey.bind(windowHyper, "9", function()
    hs.window.focusedWindow():setFrame(windowTwoThirdsRight(), 0)
end)

hs.hotkey.bind(windowHyper, "0", function()
    hs.window.focusedWindow():setFrame(windowOneThirdRight(), 0)
end)

local halvesWindowHyper = {"cmd", "alt", "shift"}

hs.hotkey.bind(halvesWindowHyper, "Right", function()
    hs.window.focusedWindow():setFrame(windowRight(), 0)
end)

hs.hotkey.bind(halvesWindowHyper, "Left", function()
    hs.window.focusedWindow():setFrame(windowLeft(), 0)
end)

hs.hotkey.bind(halvesWindowHyper, "Up", function()
    hs.window.focusedWindow():setFrame(windowTop(), 0)
end)

hs.hotkey.bind(halvesWindowHyper, "Down", function()
    hs.window.focusedWindow():setFrame(windowBottom(), 0)
end)

hs.hints.showTitleThresh = 0

hs.hotkey.bind("alt", "tab", function()
    hs.hints.windowHints()
end)




--------------------------------------------------------------------------------
-- Screen management

local screenHyper = {"cmd", "ctrl", "shift"}

hs.hotkey.bind(screenHyper, "Right", function()
    hs.window.focusedWindow():moveOneScreenEast(0)
end)

hs.hotkey.bind(screenHyper, "Left", function()
    hs.window.focusedWindow():moveOneScreenWest(0)
end)

hs.hotkey.bind(screenHyper, "Up", function()
    hs.window.focusedWindow():moveOneScreenNorth(0)
end)

hs.hotkey.bind(screenHyper, "Down", function()
    hs.window.focusedWindow():moveOneScreenSouth(0)
end)

--------------------------------------------------------------------------------
-- Spotify management

local audioHyper = {"cmd", "alt", "ctrl"}

hs.hotkey.bind(audioHyper, "P", function()
    hs.spotify.playpause()
end)

hs.hotkey.bind(audioHyper, "/", function()
    hs.spotify.displayCurrentTrack()
end)

hs.hotkey.bind(audioHyper, "Right", function()
    hs.spotify.next()
end)

hs.hotkey.bind(audioHyper, "Left", function()
    hs.spotify.previous()
end)

hs.hotkey.bind(audioHyper, "Up", function()
    local volume = hs.audiodevice.defaultOutputDevice():volume()
    hs.audiodevice.defaultOutputDevice():setVolume(volume+5)
end)

hs.hotkey.bind(audioHyper, "Down", function()
    local volume = hs.audiodevice.defaultOutputDevice():volume()
    hs.audiodevice.defaultOutputDevice():setVolume(volume-5)
end)

hs.hotkey.bind(audioHyper, "0", function()
    hs.execute('killall "Hosting AU"; open ~/dotfiles/hosting_au/dac_screen.hosting')
end)














