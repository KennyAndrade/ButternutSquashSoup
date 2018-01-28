---------------------------------
-- Created By Toni Morton      --
-- Please, Leave these credits --
-- Edited By Avery M. --
---------------------------------


RegisterServerEvent("SyncAdvert")
AddEventHandler('SyncAdvert', function(inputText)
TriggerClientEvent('DisplayAdvert', -1, inputText)
end)


AddEventHandler('chatMessage', function(from, name, message)
	if message == "/advert" then
		CancelEvent()
		TriggerClientEvent("Advert", from)
	end
end)

---------------------------------
-- Created By Toni Morton      --
-- Please, Leave these credits --
-- Edited By Avery M. --
---------------------------------
