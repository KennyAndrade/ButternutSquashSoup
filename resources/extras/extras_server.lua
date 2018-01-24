

AddEventHandler("chatMessage", function(p, color, msg)
    if msg:sub(1, 1) == "/" then
        fullcmd = stringSplit(msg, " ")
        cmd = fullcmd[1]

      if cmd == "/e1" then
          TriggerClientEvent("e1", p)
          CancelEvent()
        end
  end
      if cmd == "/e2" then
          TriggerClientEvent("e2", p)
          CancelEvent()
        end
  end
      if cmd == "/e3" then
          TriggerClientEvent("e3", p)
          CancelEvent()
        end
  end
      if cmd == "/e4" then
          TriggerClientEvent("e4", p)
          CancelEvent()
        end
  end
      if cmd == "/e5" then
          TriggerClientEvent("e5", p)
          CancelEvent()
        end
  end
      if cmd == "/e6" then
          TriggerClientEvent("e6", p)
          CancelEvent()
        end
  end
      if cmd == "/e7" then
          TriggerClientEvent("e7", p)
          CancelEvent()
        end
  end
      if cmd == "/e8" then
          TriggerClientEvent("e8", p)
          CancelEvent()
        end
  end
      if cmd == "/e9" then
          TriggerClientEvent("e9", p)
          CancelEvent()
        end
  end
      if cmd == "/e10" then
          TriggerClientEvent("e10", p)
          CancelEvent()
        end
  end
      if cmd == "/e11" then
          TriggerClientEvent("e11", p)
          CancelEvent()
        end
  end
      if cmd == "/e12" then
          TriggerClientEvent("e12", p)
          CancelEvent()
        end
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