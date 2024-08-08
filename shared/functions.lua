local resourceName = GetCurrentResourceName()

--[[
* NOTIFICATION/CONSOLE FUNCTIONS
--]]

-- Function to send chat message
function sendChatMessage(title, message)
  TriggerEvent('chat:addMessage', {
    args = { '^3^*' .. title .. '^r^7: ' .. message }
  })
end

-- Function to send server chat message
function sendServerChatMessage(target, title, message)
  exports.chat:addMessage(target, {
    args = { '^3^*' .. title .. '^r^7: ' .. message }
  })
end

-- Function for notification
function showNotification(message, flash)
  BeginTextCommandThefeedPost('STRING')
  AddTextComponentSubstringPlayerName(message)
  EndTextCommandThefeedPostTicker(flash, true)
end

-- Function for alert
function showAlert(message, shape, beep, duration)
  AddTextEntry('CH_ALERT', message)
  BeginTextCommandDisplayHelp('CH_ALERT')
  EndTextCommandDisplayHelp(shape, false, beep, duration)
end

-- Function for subtitle
function showSubtitle(message, duration)
  BeginTextCommandPrint('STRING')
  AddTextComponentString(message)
  EndTextCommandPrint(duration, true)
end

-- Function for dubug message
function debug(Config, resName, message)
  if Config.DebugMode then
    print('[^3DEBUG^7] (' .. resName .. '): ' .. message)
  end
end

-- Function to print message to console
function consoleMessage(resName, message)
  print('(^3' .. resName .. '^7) ' .. message)
end

-- Function to print warning to console
function consoleWarn(resName, message)
  print('[^3WARNING^7] (' .. resName .. '): ' .. message)
end

-- Function to print error to console
function consoleErr(resName, err)
  print('[^1ERROR^7] (' .. resName .. '): ' .. err)
end

--[[
* UTILITY FUNCTIONS 
--]]

-- Function to find a string in a table
function stringInTable(table, string)
  for _, v in pairs(table) do
    if v == string then
      return true
    end
  end
  return false
end

function getFormattedColor(formatting, color)
  local colors = { 'red', 'green', 'yellow', 'blue', 'purple', 'white', 'pink' }
  if not stringInTable(colors, color) then
    consoleErr(resourceName, 'A valid color was NOT provided somewhere.')
    return
  end
  local fivemFormatting = {
    ['red'] = '^1',
    ['green'] = '^2',
    ['yellow'] = '^3',
    ['blue'] = '^4',
    ['purple'] = '^6',
    ['white'] = '^7',
    ['pink'] = '^9'
  }
  local rsFormatting = {
    ['red'] = '~r~',
    ['green'] = '~g~',
    ['yellow'] = '~y~',
    ['blue'] = '~b~',
    ['purple'] = '~p~',
    ['white'] = '~w~',
    ['pink'] = '~q~'
  }
  if formatting == 0 then
    return fivemFormatting[color]
  elseif formatting == 1 then
    return rsFormatting[color]
  end
end

function printConfigInfo(Config)
  if Config.DebugMode then
    for k, v in pairs(Config) do
      print('[^3DEBUG^7] Config "' .. tostring(k) .. '" is set to: "' .. tostring(v) .. '"')
    end
  end
end