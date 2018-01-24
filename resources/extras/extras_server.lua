

AddEventHandler("chatMessage", function(source, name, message)
    cm = stringSplit(message, " ")

      if cm[1] == "/e1" then
          TriggerClientEvent("e1", source)
          CancelEvent()
        end
  end)
AddEventHandler("chatMessage", function(source, name, message)
    cm = stringSplit(message, " ")

      if cm[1] == "/e2" then
          TriggerClientEvent("e2", source)
          CancelEvent()
        end
  end)
AddEventHandler("chatMessage", function(source, name, message)
    cm = stringSplit(message, " ")

      if cm[1] == "/e3" then
          TriggerClientEvent("e3", source)
          CancelEvent()
        end
  end)
  AddEventHandler("chatMessage", function(source, name, message)
    cm = stringSplit(message, " ")

      if cm[1] == "/e4" then
          TriggerClientEvent("e4", source)
          CancelEvent()
        end
  end)
  AddEventHandler("chatMessage", function(source, name, message)
    cm = stringSplit(message, " ")

      if cm[1] == "/e5" then
          TriggerClientEvent("e5", source)
          CancelEvent()
        end
  end)
  AddEventHandler("chatMessage", function(source, name, message)
    cm = stringSplit(message, " ")

      if cm[1] == "/e6" then
          TriggerClientEvent("e6", source)
          CancelEvent()
        end
  end)
  AddEventHandler("chatMessage", function(source, name, message)
    cm = stringSplit(message, " ")

      if cm[1] == "/e7" then
          TriggerClientEvent("e7", source)
          CancelEvent()
        end
  end)
  AddEventHandler("chatMessage", function(source, name, message)
    cm = stringSplit(message, " ")

      if cm[1] == "/e8" then
          TriggerClientEvent("e8", source)
          CancelEvent()
        end
  end)
AddEventHandler("chatMessage", function(source, name, message)
    cm = stringSplit(message, " ")

      if cm[1] == "/e9" then
          TriggerClientEvent("e9", source)
          CancelEvent()
        end
  end)
AddEventHandler("chatMessage", function(source, name, message)
    cm = stringSplit(message, " ")

      if cm[1] == "/e10" then
          TriggerClientEvent("e10", source)
          CancelEvent()
        end
  end)
AddEventHandler("chatMessage", function(source, name, message)
    cm = stringSplit(message, " ")

      if cm[1] == "/e11" then
          TriggerClientEvent("e11", source)
          CancelEvent()
        end
  end)
AddEventHandler("chatMessage", function(source, name, message)
    cm = stringSplit(message, " ")
      if cm[1] == "/e12" then
          TriggerClientEvent("e12", source)
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