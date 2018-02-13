-- Variables
cchat = false

-- Events
AddEventHandler('chatMessage', function(source, name, message)
  if message == '/cancelchat' then
    cchat = not cchat
    if cchat then
      TriggerClientEvent('chatMessage', -1, 'Cancel Chat', {255, 255, 255}, name .. ' has canceled chat for everyone.')
    else
      TriggerClientEvent('chatMessage', -1, 'Cancel Chat', {255, 255, 255}, name .. ' has enabled chat for everyone.')
    end
    CancelEvent()
    end
  end
end)
