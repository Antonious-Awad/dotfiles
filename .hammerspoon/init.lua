local scriptPath = "./scripts/arrange_windows.sh"

local function runArrangeWindows()
  local output, status = hs.execute(scriptPath, true)
  if status == nil or status == false then
    hs.alert.show("Script failed! Check console.")
    print("Script output: " .. (output or "nil"))
  else
    hs.alert.show("Arrangement script ran OK")
  end
end

-- Run on Hammerspoon startup if external screen is already connected
if #hs.screen.allScreens() > 1 then
  runArrangeWindows()
end


-- Watcher for screen changes
local screenWatcher = hs.screen.watcher.new(function()
  local screens = hs.screen.allScreens()
  if #screens > 1 then
    hs.timer.doAfter(2, runArrangeWindows) -- small delay helps when macOS is still settling displays
  end
end)
screenWatcher:start()
