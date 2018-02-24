local Proxy = module("vrp", "lib/Proxy")

RegisterServerEvent('paycheck:salary')
AddEventHandler('paycheck:salary', function()
  	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"repair.paycheck") then
		vRP.giveMoney(user_id,750)
		vRPclient.notify(source,{"Paycheck received: $750"})
	end
	if vRP.hasPermission(user_id,"fc.paycheck") then
		vRP.giveMoney(user_id,1500)
		vRPclient.notify(source,{"Paycheck received: $1500"})
	end
	if vRP.hasPermission(user_id,"afc.paycheck") then
		vRP.giveMoney(user_id,1250)
		vRPclient.notify(source,{"Paycheck received: $1250"})
	end
	if vRP.hasPermission(user_id,"bc.paycheck") then
		vRP.giveMoney(user_id,1000)
		vRPclient.notify(source,{"Paycheck received: $1000"})
	end
	if vRP.hasPermission(user_id,"fcpt.paycheck") then
		vRP.giveMoney(user_id,900)
		vRPclient.notify(source,{"Paycheck received: $900"})
	end
	if vRP.hasPermission(user_id,"flt.paycheck") then
		vRP.giveMoney(user_id,800)
		vRPclient.notify(source,{"Paycheck received: $800"})
	end
	if vRP.hasPermission(user_id,"de.paycheck") then
		vRP.giveMoney(user_id,700)
		vRPclient.notify(source,{"Paycheck received: $700"})
	end
	if vRP.hasPermission(user_id,"ff.paycheck") then
		vRP.giveMoney(user_id,650)
		vRPclient.notify(source,{"Paycheck received: $650"})
	end
	if vRP.hasPermission(user_id,"pff.paycheck") then
		vRP.giveMoney(user_id,500)
		vRPclient.notify(source,{"Paycheck received: $500"})
	end
	if vRP.hasPermission(user_id,"emt.paycheck") then
		vRP.giveMoney(user_id,500)
		vRPclient.notify(source,{"Paycheck received: $500"})
	end
	if vRP.hasPermission(user_id,"pmed.paycheck") then
		vRP.giveMoney(user_id,650)
		vRPclient.notify(source,{"Paycheck received: $650"})
	end
	if vRP.hasPermission(user_id,"pft.paycheck") then
		vRP.giveMoney(user_id,700)
		vRPclient.notify(source,{"Paycheck received: $700"})
	end
	if vRP.hasPermission(user_id,"elt.paycheck") then
		vRP.giveMoney(user_id,800)
		vRPclient.notify(source,{"Paycheck received: $800"})
	end
	if vRP.hasPermission(user_id,"ecpt.paycheck") then
		vRP.giveMoney(user_id,900)
		vRPclient.notify(source,{"Paycheck received: $900"})
	end
	if vRP.hasPermission(user_id,"eabc.paycheck") then
		vRP.giveMoney(user_id,1250)
		vRPclient.notify(source,{"Paycheck received: $1250"})
	end
	if vRP.hasPermission(user_id,"ebc.paycheck") then
		vRP.giveMoney(user_id,1500)
		vRPclient.notify(source,{"Paycheck received: $1500"})
	end
	if vRP.hasPermission(user_id,"sup.paycheck") then
		vRP.giveMoney(user_id,1500)
		vRPclient.notify(source,{"Paycheck received: $1500"})
	end
	if vRP.hasPermission(user_id,"ds.paycheck") then
		vRP.giveMoney(user_id,1250)
		vRPclient.notify(source,{"Paycheck received: $1250"})
	end
	if vRP.hasPermission(user_id,"sins.paycheck") then
		vRP.giveMoney(user_id,1000)
		vRPclient.notify(source,{"Paycheck received: $1000"})
	end
	if vRP.hasPermission(user_id,"scpt.paycheck") then
		vRP.giveMoney(user_id,900)
		vRPclient.notify(source,{"Paycheck received: $900"})
	end
	if vRP.hasPermission(user_id,"slt.paycheck") then
		vRP.giveMoney(user_id,800)
		vRPclient.notify(source,{"Paycheck received: $800"})
	end
	if vRP.hasPermission(user_id,"ssgt.paycheck") then
		vRP.giveMoney(user_id,700)
		vRPclient.notify(source,{"Paycheck received: $700"})
	end
	if vRP.hasPermission(user_id,"inv.paycheck") then
		vRP.giveMoney(user_id,650)
		vRPclient.notify(source,{"Paycheck received: $650"})
	end
	if vRP.hasPermission(user_id,"trp.paycheck") then
		vRP.giveMoney(user_id,500)
		vRPclient.notify(source,{"Paycheck received: $500"})
	end
	if vRP.hasPermission(user_id,"com.paycheck") then
		vRP.giveMoney(user_id,1500)
		vRPclient.notify(source,{"Paycheck received: $1500"})
	end
	if vRP.hasPermission(user_id,"dc.paycheck") then
		vRP.giveMoney(user_id,1250)
		vRPclient.notify(source,{"Paycheck received: $1250"})
	end
	if vRP.hasPermission(user_id,"ins.paycheck") then
		vRP.giveMoney(user_id,1000)
		vRPclient.notify(source,{"Paycheck received: $1000"})
	end
	if vRP.hasPermission(user_id,"cpt.paycheck") then
		vRP.giveMoney(user_id,900)
		vRPclient.notify(source,{"Paycheck received: $900"})
	end
	if vRP.hasPermission(user_id,"lt.paycheck") then
		vRP.giveMoney(user_id,800)
		vRPclient.notify(source,{"Paycheck received: $800"})
	end
	if vRP.hasPermission(user_id,"sgt.paycheck") then
		vRP.giveMoney(user_id,700)
		vRPclient.notify(source,{"Paycheck received: $700"})
	end
	if vRP.hasPermission(user_id,"trash.paycheck") then
		vRP.giveMoney(user_id,500)
		vRPclient.notify(source,{"Paycheck received: $500"})
	end
	if vRP.hasPermission(user_id,"det.paycheck") then
		vRP.giveMoney(user_id,650)
		vRPclient.notify(source,{"Paycheck received: $650"})
	end
	if vRP.hasPermission(user_id,"po.paycheck") then
		vRP.giveMoney(user_id,500)
		vRPclient.notify(source,{"Paycheck received: $500"})
	end
	if vRP.hasPermission(user_id,"rct.paycheck") then
		vRP.giveMoney(user_id,450)
		vRPclient.notify(source,{"Paycheck received: $450"})
	end
	if vRP.hasPermission(user_id,"uber.paycheck") then
		vRP.giveMoney(user_id,500)
		vRPclient.notify(source,{"Paycheck received: $500"})
	end
	if vRP.hasPermission(user_id,"Lawyer.paycheck") then
		vRP.giveMoney(user_id,1250)
		vRPclient.notify(source,{"Paycheck received: $1250"})
	end
	if vRP.hasPermission(user_id,"delivery.paycheck") then
		vRP.giveMoney(user_id,450)
		vRPclient.notify(source,{"Paycheck received: $450"})
	end
	if vRP.hasPermission(user_id,"citizen.paycheck") then
		vRP.giveMoney(user_id,250)
		vRPclient.notify(source,{"Paycheck received: $250"})
	end
	if vRP.hasPermission(user_id,"bankdriver.paycheck") then
		vRP.giveMoney(user_id,600)
		vRPclient.notify(source,{"Paycheck received: $600"})
	end
	if vRP.hasPermission(user_id,"pilot.paycheck") then
		vRP.giveMoney(user_id,1000)
		vRPclient.notify(source,{"Paycheck received: $1000"})
	end
	if vRP.hasPermission(user_id,"air.paycheck") then
		vRP.giveMoney(user_id,750)
		vRPclient.notify(source,{"Paycheck received: $750"})
	end
end)

RegisterServerEvent('paycheck:bonus')
AddEventHandler('paycheck:bonus', function()
  	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"user.paycheck") then
		vRP.giveMoney(user_id,50)
		vRPclient.notify(source,{"Pay Bonus: $50"})
	end
	if vRP.hasPermission(user_id,"user.paycheck") then
		vRP.getMoney(user_id,150)
		vRPclient.notify(source,{"Tax: - $150"})
	end
end)