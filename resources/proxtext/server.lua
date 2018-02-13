-- Kenny Andrade 2018©

AddEventHandler('chatMessage', function(source, name, message)
	local pname = GetPlayerName(source)
	TriggerClientEvent("sendProximityMessage", -1, source, pname, message)
	CancelEvent()
end)