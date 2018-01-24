AddEventHandler("chatMessage", function(source, name, message)
  cm = stringsplit(message, " ")

  if cm[1] == "/hu" then
    CancelEvent()
    TriggerClientEvent("Handsup", source)
  end
end)
  AddEventHandler("chatMessage", function(source, name, message)
  cm = stringsplit(message, " ")

    if cm[1] == "/huk" then
          TriggerClientEvent("KneelHU", source)
          CancelEvent()
    end
end)

function stringSplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end