--[[
* NOTIFICATION EXPORTS
--]]

exports('sendChatMessage', function(title, message)
  sendChatMessage(title, message)
end)

exports('sendServerChatMessage', function(target, title, message)
  sendServerChatMessage(target, title, message)
end)

-- Notification Export (above minimap) 
exports('showNotification', function (message, flash)
  showNotification(message, flash)
end)

-- Alert (top left corner)
exports('showAlert', function (message, shape, beep, duration)
  showAlert(message, shape, beep, duration)
end)

-- Subtitle (text at bottom middle of screen)
exports('showSubtitle', function (message, duration)
  showSubtitle(message, duration)
end)

--[[
* UTILITY FUNCTIONS
--]]

-- Function to check for a string in a table
exports('stringInTable', function (table, string)
  return stringInTable(table, string)
end)

-- Function to provide a certain color code, based on what formatting you want to use
exports('color', function (formatting, color)
  return getFormattedColor(formatting, color)
end)

-- Function to check config file
exports('checkConfig', function (Config)
  printConfigInfo(Config)
end)

--[[
* DEBUG/CONSOLE EXPORTS
--]]

-- Debug function
exports('debug', function (Config, resName, message)
  debug(Config, resName, message)
end)

-- Send console warning
exports('consoleWarn', function (resName, message)
  consoleWarn(resName, message)
end)

-- Send console error
exports('consoleErr', function(resName, err)
  consoleErr(resName, err)
end)

-- Send console message
exports('consoleMessage', function(resName, message)
  consoleMessage(resName, message)
end)