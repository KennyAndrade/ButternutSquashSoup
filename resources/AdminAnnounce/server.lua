---------------------------------
-- Created By Toni Morton      --
-- Please, Leave these credits --
-- Edited By Avery M. --
---------------------------------


RegisterServerEvent("SyncAA")
AddEventHandler('SyncAA', function(inputText)
TriggerClientEvent('DisplayAA', -1, inputText)
end)


AddEventHandler('chatMessage', function(from, name, message)
	if message == "/aa808" then
		CancelEvent()
		TriggerClientEvent("AA", from)
	end
end)

---------------------------------
-- Created By Toni Morton      --
-- Please, Leave these credits --
-- Edited By Avery M. --
---------------------------------
