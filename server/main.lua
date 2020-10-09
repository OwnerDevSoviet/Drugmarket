ESX = nil

TriggerEvent('esx:getShwesfjodasaredObjwesfjodasect', function(obj) ESX = obj end)

RegisterServerEvent('fetchjob')
AddEventHandler('fetchjob', function()
    local py  = ESX.GetPlayerFromId(source)
    TriggerClientEvent('getjob', source, py.job.name)
end)

local _source = source
	local o = ESX.GetPlayerFromId(source)
	local m = false
	local sg = false
	local ss = false
	local cc = false
	local ni = false
	local m = false
	local p = false
	local a = false
	local x = false

RegisterNetEvent('taco:meat')
AddEventHandler('taco:meat', function()
src = source
    local o = ESX.GetPlayerFromId(source)
    local g   = o.getInventoryItem('opium')
    local a = GetPlayerPed(src)
	local b = vec3(Config.OpiumPickup.x, Config.OpiumPickup.y, Config.OpiumPickup.z)
	local q = true
	local i = o.getInventoryItem('opium').count


	while i < g.limit do	
		 q = false				
  i = i + 1
        Wait(1000)
        o.addInventoryItem('opium', 1)
	if #(GetEntityCoords(a) - b) > 2.00 then
  break
  end
  end
TriggerClientEvent('esx:showNotification', src, ('Get lost im bored with you!'))
end)

RegisterNetEvent('recovery:opprocess')
AddEventHandler('recovery:opprocess', function()
	local o = ESX.GetPlayerFromId(source)
	local q   = o.getInventoryItem('opiumbag')
	local t = o.getInventoryItem('opium').count
	if q.count < q.limit and t > 0 then
		o.removeInventoryItem('opium', 10)
		o.addInventoryItem('opiumbag', 1)
	else
		TriggerClientEvent('drug:not', source)
	end
end)

RegisterNetEvent('recovery:sellopium')
AddEventHandler('recovery:sellopium', function()
	local o = ESX.GetPlayerFromId(source)
	local q   = o.getInventoryItem('opiumbag')
	local t = o.getInventoryItem('opiumbag').count
	if t >= 100 then
		o.removeInventoryItem('opiumbag', 100)
		o.addAccountMoney('black_money', Config.OpiumPrice)
	else
		TriggerClientEvent('drug:not', source)
	end
end)


RegisterNetEvent('recovery:acid')
AddEventHandler('recovery:acid', function()
src = source
    local o = ESX.GetPlayerFromId(source)
    local g   = o.getInventoryItem('acid')
    local a = GetPlayerPed(src)
    local b = vec3(Config.AcidPickup.x, Config.AcidPickup.y, Config.AcidPickup.z)
	local i = o.getInventoryItem('acid').count
	local q = true
	while i < g.limit do	
		q = false				
  i = i + 1
        Wait(1000)
        o.addInventoryItem('acid', 1)
	if #(GetEntityCoords(a) - b) > 2.00 then
  break
  end
  end
TriggerClientEvent('esx:showNotification', src, ('Get lost im bored with you!'))
end)

RegisterNetEvent('recovery:acidprocess')
AddEventHandler('recovery:acidprocess', function()
	local o = ESX.GetPlayerFromId(source)
	local q   = o.getInventoryItem('acidbag')
	local acid = o.getInventoryItem('acid').count
	if q.count < q.limit and acid > 0 then
		o.removeInventoryItem('acid', 10)
		o.addInventoryItem('acidbag', 1)
	else
		TriggerClientEvent('drug:not', source)
	end
end)

RegisterNetEvent('recovery:sellacid')
AddEventHandler('recovery:sellacid', function()
	local o = ESX.GetPlayerFromId(source)
	local q   = o.getInventoryItem('acidbag')
	local t = o.getInventoryItem('acidbag').count
	if t >= 100 then
		o.removeInventoryItem('acidbag', 100)
		o.addAccountMoney('black_money', Config.AcidPrice)
	else
		TriggerClientEvent('drug:not', source)
	end
end)


RegisterNetEvent('recovery:heroin')
AddEventHandler('recovery:heroin', function()
src = source
    local o = ESX.GetPlayerFromId(source)
    local g   = o.getInventoryItem('heroin')
    local a = GetPlayerPed(src)
    local b = vec3(Config.HeroinPickup.x, Config.HeroinPickup.y, Config.HeroinPickup.z)
	local i = o.getInventoryItem('heroin').count
	local q = true


	while i < g.limit do	
		q = false			
  i = i + 1
        Wait(1000)
        o.addInventoryItem('heroin', 1)
	if #(GetEntityCoords(a) - b) > 2.00 then
  break
  end
  end
TriggerClientEvent('esx:showNotification', src, ('Get lost im bored with you!'))
end)

RegisterNetEvent('recovery:heroinprocess')
AddEventHandler('recovery:heroinprocess', function()
	local o = ESX.GetPlayerFromId(source)
	local q   = o.getInventoryItem('heroinneedle')
	local a = o.getInventoryItem('heroin').count
	if q.count < q.limit and a > 0 then
		o.removeInventoryItem('heroin', 10)
		o.addInventoryItem('heroinneedle', 1)
	else
		TriggerClientEvent('drug:not', source)
	end
end)

RegisterNetEvent('recovery:sellheroin')
AddEventHandler('recovery:sellheroin', function()
	local o = ESX.GetPlayerFromId(source)
	local q   = o.getInventoryItem('heroinneedle')
	local t = o.getInventoryItem('heroinneedle').count
	if t >= 100 then
		o.removeInventoryItem('heroinneedle', 100)
		o.addAccountMoney('black_money', Config.HeroinPrice)
	else
		TriggerClientEvent('drug:not', source)
	end
end)


RegisterNetEvent('recovery:coke')
AddEventHandler('recovery:coke', function()
src = source
    local o = ESX.GetPlayerFromId(source)
    local g   = o.getInventoryItem('cocaine')
    local a = GetPlayerPed(src)
    local b = vec3(Config.CokePickup.x, Config.CokePickup.y, Config.CokePickup.z)
    local i = o.getInventoryItem('cocaine').count
    local q = true

	while i < g.limit do	
		q = false			
  i = i + 1
        Wait(1000)
        o.addInventoryItem('cocaine', 1)
	if #(GetEntityCoords(a) - b) > 2.00 then
  break
  end
  end
TriggerClientEvent('esx:showNotification', src, ('Get lost im bored with you!'))
end)

RegisterNetEvent('recovery:cokeprocess')
AddEventHandler('recovery:cokeprocess', function()
	local o = ESX.GetPlayerFromId(source)
	local q   = o.getInventoryItem('cokebags')
	local acid = o.getInventoryItem('cocaine').count
	if q.count < q.limit and acid > 0 then
		o.removeInventoryItem('cocaine', 10)
		o.addInventoryItem('cokebags', 1)
	else
		TriggerClientEvent('drug:not', source)
	end
end)

RegisterNetEvent('recovery:sellcoke')
AddEventHandler('recovery:sellcoke', function()
	local o = ESX.GetPlayerFromId(source)
	local q   = o.getInventoryItem('cokebags')
	local t = o.getInventoryItem('cokebags').count
	if t >= 100 then
		o.removeInventoryItem('cokebags', 100)
		o.addAccountMoney('black_money', Config.CokePrice)
	else
		TriggerClientEvent('drug:not', source)
	end
end)


RegisterNetEvent('recovery:shrooms')
AddEventHandler('recovery:shrooms', function()
src = source
    local o = ESX.GetPlayerFromId(source)
    local g   = o.getInventoryItem('shroom')
    local a = GetPlayerPed(src)
    local b = vec3(Config.ShroomsPickup.x, Config.ShroomsPickup.y, Config.ShroomsPickup.z)
	local i = o.getInventoryItem('shroom').count
	local q = true

		while i < g.limit do	
		q = false			
  i = i + 1
        Wait(1000)
        o.addInventoryItem('shroom', 1)
	if #(GetEntityCoords(a) - b) > 2.00 then
  break
  end
  end
TriggerClientEvent('esx:showNotification', src, ('Get lost im bored with you!'))
end)

RegisterNetEvent('recovery:shroomprocess')
AddEventHandler('recovery:shroomprocess', function()
	local o = ESX.GetPlayerFromId(source)
	local q   = o.getInventoryItem('shroomsbag')
	local a = o.getInventoryItem('shroom').count
	if q.count < q.limit and a > 0 then
		o.removeInventoryItem('shroom', 10)
		o.addInventoryItem('shroomsbag', 1)
	else
		TriggerClientEvent('drug:not', source)
	end
end)

RegisterNetEvent('recovery:sellshrooms')
AddEventHandler('recovery:sellshrooms', function()
	local o = ESX.GetPlayerFromId(source)
	local q   = o.getInventoryItem('shroomsbag')
	local t = o.getInventoryItem('shroomsbag').count
	if t >= 100 then
		o.removeInventoryItem('shroomsbag', 100)
		o.addAccountMoney('black_money', Config.ShroomsPrice)
	else
		TriggerClientEvent('drug:not', source)
	end
end)

RegisterNetEvent('recovery:xanax')
AddEventHandler('recovery:xanax', function()
src = source
    local o = ESX.GetPlayerFromId(source)
    local g   = o.getInventoryItem('xanax')
    local a = GetPlayerPed(src)
    local b = vec3(Config.XanaxPickup.x, Config.XanaxPickup.y, Config.XanaxPickup.z)
	local i = o.getInventoryItem('xanax').count
	local q = true


	while i < g.limit do
		q = false				
  i = i + 1
        Wait(1000)
        o.addInventoryItem('xanax', 1)
	if #(GetEntityCoords(a) - b) > 2.00 then
  break
  end
  end
TriggerClientEvent('esx:showNotification', src, ('Get lost im bored with you!'))
end)

RegisterNetEvent('recovery:xanaxprocess')
AddEventHandler('recovery:xanaxprocess', function()
	local o = ESX.GetPlayerFromId(source)
	local q   = o.getInventoryItem('xanaxbag')
	local a = o.getInventoryItem('xanax').count
	if q.count < q.limit and a > 0 then
		o.removeInventoryItem('xanax', 10)
		o.addInventoryItem('xanaxbag', 1)
	else
		TriggerClientEvent('drug:not', source)
	end
end)

RegisterNetEvent('recovery:sellxanax')
AddEventHandler('recovery:sellxanax', function()
	local o = ESX.GetPlayerFromId(source)
	local q   = o.getInventoryItem('xanaxbag')
	local t = o.getInventoryItem('xanaxbag').count
	if t >= 100 then
		o.removeInventoryItem('xanaxbag', 100)
		o.addAccountMoney('black_money', Config.XanaxPrice)
	else
		TriggerClientEvent('drug:not', source)
	end
end)


RegisterNetEvent('recovery:perc')
AddEventHandler('recovery:perc', function()
src = source
    local o = ESX.GetPlayerFromId(source)
    local g   = o.getInventoryItem('perc')
    local a = GetPlayerPed(src)
    local b = vec3(Config.PercPickup.x, Config.PercPickup.y, Config.PercPickup.z)
	local i = o.getInventoryItem('perc').count
	local q = true


	while i < g.limit do	
		q = false			
  i = i + 1
        Wait(1000)
        o.addInventoryItem('perc', 1)
	if #(GetEntityCoords(a) - b) > 2.00 then
  break
  end
  end
TriggerClientEvent('esx:showNotification', src, ('Get lost im bored with you!'))
end)

RegisterNetEvent('recovery:percprocess')
AddEventHandler('recovery:percprocess', function()
	local o = ESX.GetPlayerFromId(source)
	local q   = o.getInventoryItem('percbag')
	local a = o.getInventoryItem('perc').count
	if q.count < q.limit and a > 0 then
		o.removeInventoryItem('perc', 10)
		o.addInventoryItem('percbag', 1)
	else
		TriggerClientEvent('drug:not', source)
	end
end)

RegisterNetEvent('recovery:sellperc')
AddEventHandler('recovery:sellperc', function()
	local o = ESX.GetPlayerFromId(source)
	local q   = o.getInventoryItem('percbag')
	local t = o.getInventoryItem('percbag').count
	if t >= 100 then
		o.removeInventoryItem('percbag', 100)
		o.addAccountMoney('black_money', Config.PercPrice)
	else
		TriggerClientEvent('drug:not', source)
	end
end)


RegisterNetEvent('recovery:lean')
AddEventHandler('recovery:lean', function()
src = source
    local o = ESX.GetPlayerFromId(source)
    local g   = o.getInventoryItem('lean')
    local a = GetPlayerPed(src)
    local b = vec3(Config.LeanPickup.x, Config.LeanPickup.y, Config.LeanPickup.z)
	local i = o.getInventoryItem('lean').count
	local q = true

	while i < g.limit do
		q = false				
  i = i + 1
        Wait(1000)
        o.addInventoryItem('lean', 1)
	if #(GetEntityCoords(a) - b) > 2.00 then
  break
  end
  end
TriggerClientEvent('esx:showNotification', src, ('Get lost im bored with you!'))
end)

RegisterNetEvent('recovery:leanprocess')
AddEventHandler('recovery:leanprocess', function()
	local o = ESX.GetPlayerFromId(source)
	local q   = o.getInventoryItem('leanbottle')
	local a = o.getInventoryItem('lean').count
	if q.count < q.limit and a > 0 then
		o.removeInventoryItem('lean', 10)
		o.addInventoryItem('leanbottle', 1)
	else
		TriggerClientEvent('drug:not', source)
	end
end)

RegisterNetEvent('recovery:selllean')
AddEventHandler('recovery:selllean', function()
	local o = ESX.GetPlayerFromId(source)
	local q   = o.getInventoryItem('leanbottle')
	local t = o.getInventoryItem('leanbottle').count
	if t >= 100 then
		o.removeInventoryItem('leanbottle', Config.Sellbulk)
		o.addAccountMoney('black_money', Config.LeanPrice)
	else
		TriggerClientEvent('drug:not', source)
	end
end)


RegisterNetEvent('drugs:trigger')
AddEventHandler('drugs:trigger', function()
  sg = true
	  if sg == true then
		  TriggerEvent('successrate')
			TriggerClientEvent("pNotify:SetQueueMax", source, "fuqem", 1)
			TriggerClientEvent("pNotify:SendNotification", source, {
		  text = "trying to convince person to buy the product",
		  type = "error",
		  queue = "fuqem",
		  timeout = 2500,
		  layout = "Centerleft"
		  })
   end
end)

RegisterNetEvent('checkinventory')
AddEventHandler('checkinventory', function()
  local py = ESX.GetPlayerFromId(source)
  local m = py.getInventoryItem('methbag').count
  local c 	  = py.getInventoryItem('cokebags').count
  local w = py.getInventoryItem('weedbag').count
  local o = py.getInventoryItem('opiumbag').count
  local h = py.getInventoryItem('heroinneedle').count
  local a = py.getInventoryItem('acidbag').count
  local s = py.getInventoryItem('shroomsbag').count
  local x = py.getInventoryItem('xanaxbag').count
  local p = py.getInventoryItem('percbag').count
  local l = py.getInventoryItem('leanbottle').count

  if m >= 1 or c >= 1 or w >= 1 or o >= 1 or h >= 1 or a >= 1 or x >= 1  or p >= 1 or l >= 1 or s >= 1 then
	  TriggerClientEvent("checkedit", source, true)
  else
	  TriggerClientEvent("checkedit", source, false)
  end

end)

RegisterNetEvent('drugs:sell')
AddEventHandler('drugs:sell', function()
	local py = ESX.GetPlayerFromId(source)
	local m = py.getInventoryItem('methbag').count--
	local c 	  = py.getInventoryItem('cokebags').count--
	local w = py.getInventoryItem('weedbag').count--
	local o = py.getInventoryItem('opiumbag').count--
	local h = py.getInventoryItem('heroinneedle').count--
	local a = py.getInventoryItem('acidbag').count--
	local s = py.getInventoryItem('shroomsbag').count--
	local x = py.getInventoryItem('xanaxbag').count--
    local p = py.getInventoryItem('percbag').count
	local l = py.getInventoryItem('leanbottle').count

	local pc = math.random (240,245) -- Coke
	local pw = math.random (50,55) -- Weed
	local pm = math.random (200,205) -- Meth
	local po = math.random (160,165) -- Opium
	local ph = math.random (127,228) -- Heroin
	local pa = math.random (180,185) -- acid
	local ps = math.random (80,85) -- Shrooms
	local px = math.random (120,125) -- Xanax
	local pp = math.random (130,135) -- perc
	local p1 = math.random (100,105) -- Lean


	  if c >= 1 and ss == true then
			   TriggerClientEvent("pNotify:SetQueueMax", source, "fuqem", 5)
			  TriggerClientEvent("pNotify:SendNotification", source, {
				  text = "You have sold a bag of cocaine for $" .. pc ,
				  type = "success",
				  progressBar = false,
				  queue = "fuqem",
				  timeout = 2000,
				  layout = "CenterLeft"
		  })
		  TriggerClientEvent("animation", source)
		  py.removeInventoryItem('cokebags', 1)
			py.addAccountMoney('black_money', pc)
			sg = false
		elseif l >= 1 and ss == true then
			TriggerClientEvent("pNotify:SetQueueMax", source, "fuqem", 5)
		  TriggerClientEvent("pNotify:SendNotification", source, {
			  text = "You have sold a bag of ganja for $" .. p1 ,
			  type = "success",
			  progressBar = false,
			  queue = "fuqem",
			  timeout = 2000,
			  layout = "CenterLeft"
	  })
	  TriggerClientEvent("animation", source)
	  TriggerClientEvent("test", source)
		py.removeInventoryItem('leanbottle', 1)
		py.addAccountMoney('black_money', p1)
	  sg = false
		elseif p >= 1 and ss == true then
			TriggerClientEvent("pNotify:SetQueueMax", source, "fuqem", 5)
		  TriggerClientEvent("pNotify:SendNotification", source, {
			  text = "You have sold a bag of ganja for $" .. pp ,
			  type = "success",
			  progressBar = false,
			  queue = "fuqem",
			  timeout = 2000,
			  layout = "CenterLeft"
	  })
	  TriggerClientEvent("animation", source)
	  TriggerClientEvent("test", source)
		py.removeInventoryItem('percbag', 1)
		py.addAccountMoney('black_money', pp)
	  sg = false
		elseif x >= 1 and ss == true then
			TriggerClientEvent("pNotify:SetQueueMax", source, "fuqem", 5)
		  TriggerClientEvent("pNotify:SendNotification", source, {
			  text = "You have sold a bag of ganja for $" .. px ,
			  type = "success",
			  progressBar = false,
			  queue = "fuqem",
			  timeout = 2000,
			  layout = "CenterLeft"
	  })
	  TriggerClientEvent("animation", source)
	  TriggerClientEvent("test", source)
		py.removeInventoryItem('xanaxbag', 1)
		py.addAccountMoney('black_money', px)
	  sg = false
		elseif a >= 1 and ss == true then
			TriggerClientEvent("pNotify:SetQueueMax", source, "fuqem", 5)
		  TriggerClientEvent("pNotify:SendNotification", source, {
			  text = "You have sold a bag of ganja for $" .. pa ,
			  type = "success",
			  progressBar = false,
			  queue = "fuqem",
			  timeout = 2000,
			  layout = "CenterLeft"
	  })
	  TriggerClientEvent("animation", source)
	  TriggerClientEvent("test", source)
		py.removeInventoryItem('acidbag', 1)
		py.addAccountMoney('black_money', pa)
	  sg = false
	elseif s >= 1 and ss == true then
		TriggerClientEvent("pNotify:SetQueueMax", source, "fuqem", 5)
	  TriggerClientEvent("pNotify:SendNotification", source, {
		  text = "You have sold a bag of ganja for $" .. ps ,
		  type = "success",
		  progressBar = false,
		  queue = "fuqem",
		  timeout = 2000,
		  layout = "CenterLeft"
  })
  TriggerClientEvent("animation", source)
  TriggerClientEvent("test", source)
	py.removeInventoryItem('shroomsbag', 1)
	py.addAccountMoney('black_money', ps)
  sg = false
		elseif w >= 1 and ss == true then
				TriggerClientEvent("pNotify:SetQueueMax", source, "fuqem", 5)
			  TriggerClientEvent("pNotify:SendNotification", source, {
				  text = "You have sold a bag of ganja for $" .. pw ,
				  type = "success",
				  progressBar = false,
				  queue = "fuqem",
				  timeout = 2000,
				  layout = "CenterLeft"
		  })
		  TriggerClientEvent("animation", source)
		  TriggerClientEvent("test", source)
			py.removeInventoryItem('weedbag', 1)
			py.addAccountMoney('black_money', pw)
		  sg = false
		  elseif h >= 1 and ss == true then
			  TriggerClientEvent("pNotify:SetQueueMax", source, "fuqem", 5)
			TriggerClientEvent("pNotify:SendNotification", source, {
				text = "You have sold a heroin needle for $" .. ph ,
				type = "success",
				progressBar = false,
				queue = "fuqem",
				timeout = 2000,
				layout = "CenterLeft"
		})
		TriggerClientEvent("animation", source)
		TriggerClientEvent("test", source)
		  py.removeInventoryItem('heroinneedle', 1)
		  py.addAccountMoney('black_money', ph)
		  sg = false
		  elseif m >= 1 and ss == true then
				TriggerClientEvent("pNotify:SetQueueMax", source, "fuqem", 5)
			  TriggerClientEvent("pNotify:SendNotification", source, {
				  text = "You have sold a methbag for $" .. pm ,
				  type = "success",
				  progressBar = false,
				  queue = "fuqem",
				  timeout = 2000,
				  layout = "CenterLeft"
		  })
		  TriggerClientEvent("animation", source)
			py.removeInventoryItem('methbag', 1)
			py.addAccountMoney('black_money', pm)
			sg = false
			elseif o >= 1 and ss == true then
				TriggerClientEvent("pNotify:SetQueueMax", source, "fuqem", 5)
			  TriggerClientEvent("pNotify:SendNotification", source, {
				  text = "You have sold a bag of crack for $" .. po ,
				  type = "success",
				  progressBar = false,
				  queue = "fuqem",
				  timeout = 2000,
				  layout = "CenterLeft"
		  })
		  TriggerClientEvent("animation", source)
		  py.removeInventoryItem('opiumbag', 1)
			py.addAccountMoney('black_money', po)
			sg = false
		  elseif sg == true and ss == false and ni == true then
			  TriggerClientEvent("pNotify:SetQueueMax", source, "fuqem", 5)
			  TriggerClientEvent("pNotify:SendNotification", source, {
				  text = "They are not interested",
				  type = "error",
				  progressBar = false,
				  queue = "fuqem",
				  timeout = 2000,
				  layout = "CenterLeft"
		  })
			sg = false
			elseif m < 1 and c < 1 and w < 1 and o < 1 and o < 1 and h < 1 and a < 1 and s < 1 and x < 1 and p < 1 and l < 1 then
			  TriggerClientEvent("pNotify:SetQueueMax", source, "fuqem", 5)
			  TriggerClientEvent("pNotify:SendNotification", source, {
			  text = "You dont have any drugs",
			  type = "error",
			  progressBar = false,
			  queue = "fuqem",
			  timeout = 2000,
			  layout = "CenterLeft"
		  })
		  elseif cc == true and ss == false then
				TriggerClientEvent("pNotify:SetQueueMax", source, "fuqem", 5)
			  TriggerClientEvent("pNotify:SendNotification", source, {
				  text = "They are calling the cops",
				  type = "error",
				  progressBar = false,
				  queue = "fuqem",
				  timeout = 2000,
				  layout = "CenterLeft"
		  })
		  TriggerClientEvent("pdnot", source)
			sg = false
		end
end)

RegisterNetEvent('successrate')
AddEventHandler('successrate', function()
		
		local pt = math.random(1, 11)

		if pt == 7 or pt == 8 or pt == 9 then
			ss = false
			ni = true
		elseif pt ~= 8 and pt ~= 9 and pt ~= 10 and pt ~= 7 then
			ss = true
			ni = false
		else
			ni = false
			ss = false
			cc = true
		end
end)

RegisterNetEvent('selldrugs')
AddEventHandler('selldrugs', function()
	  TriggerClientEvent("pNotify:SetQueueMax", source, "fuqem", 5)
	  TriggerClientEvent("pNotify:SendNotification", source, {
	  text = "You moved too far away",
	  type = "error",
	  progressBar = false,
	  queue = "fuqem",
	  timeout = 2000,
	  layout = "CenterLeft"
  })
end)









