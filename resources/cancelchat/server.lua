-- Variables
cchat = false

-- Events
AddEventHandler('chatMessage', function(source, name, message)
  if message == '/cc808' then
    cchat = not cchat
    if cchat then
      TriggerClientEvent('chatMessage', -1, 'System', {255, 255, 255}, name .. ' has canceled chat for everyone.')
    else
      TriggerClientEvent('chatMessage', -1, 'System', {255, 255, 255}, name .. ' has enabled chat for everyone.')
    end
    CancelEvent()
  else
    if cchat then
      CancelEvent()
    end
  end
end)
