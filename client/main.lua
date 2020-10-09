ESX = nil
local pda		= {}
local mj     = nil
local ss       = false
local hs       = false
local ca     = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getShwesfjodasaredObjwesfjodasect', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  pda = xPlayer   
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  pda.job = job
end)

RegisterNetEvent('getjob')
AddEventHandler('getjob', function(jobName)
  mj = jobName
end)

local isMenuOpen = false

local g = {
	{label = "Sell Opium x100", value = 'sell_opium'},
	{label = "Sell Cocaine x100", value = 'sell_coke'},
	{label = "Sell Acid x100", value = 'sell_acid'},
	{label = "Sell Heroin x100", value = 'sell_heroin'},
	{label = "Sell Shrooms x100", value = 'sell_shrooms'},
	{label = "Sell Xanax x100", value = 'sell_xanax'},
	{label = "Sell Percs x100", value = 'sell_perc'},
	{label = "Sell Lean x100", value = 'sell_lean'},
}

function OpenMenu()
    isMenuOpen = true

    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'general_menu', {
        title    = "Wholesale Drug Sales",
        align    = "left",
        elements = g
    }, function(data, menu)
        menu.close()
        isMenuOpen = false

         if data.current.value == 'sell_opium' then
            SellOpium()
         end
         if data.current.value == 'sell_coke' then
            SellCoke()
         end
         if data.current.value == 'sell_acid' then
            SellAcid()
         end
		 if data.current.value == 'sell_heroin' then
            SellHeroin()
		 end
		 if data.current.value == 'sell_shrooms' then
            SellShrooms()
		 end
		 if data.current.value == 'sell_xanax' then
            SellXanax()
		 end
		 if data.current.value == 'sell_perc' then
            SellPerc()
		 end
		 if data.current.value == 'sell_lean' then
            SellLean()
         end
    end,
    function(data, menu) 
        menu.close()
        isMenuOpen = false
    end)

end


Citizen.CreateThread(function()
    while true do
		Wait(0)
        local a = PlayerPedId()
	    local b = GetEntityCoords(a)
		local c = true
		if GetDistanceBetweenCoords(b, Config.OpiumPickup.x, Config.OpiumPickup.y, Config.OpiumPickup.z, true) < 2 then
		    c = false
			ESX.ShowHelpNotification('Press ~INPUT_CONTEXT~ to pick up opium')
			if IsControlJustPressed(1, 38) then
				TriggerServerEvent('taco:meat')
				Wait(100000)
			elseif IsControlJustPressed(1, 38) then
				ESX.ShowNotification('invalid_amount')
			end
		end
		if c then
		    Wait(1000)
		end
	end
end)

Citizen.CreateThread(function()
    while true do
		Wait(0)
        local a = PlayerPedId()
	    local b = GetEntityCoords(a)
		local c = true
		if GetDistanceBetweenCoords(b, Config.OpiumProcess.x, Config.OpiumProcess.y, Config.OpiumProcess.z, true) < 2 then
		    c = false
			ESX.ShowHelpNotification('Press ~INPUT_CONTEXT~ to process Opium')
			if IsControlJustPressed(1, 38) then
				TriggerServerEvent('recovery:opprocess')
			elseif IsControlJustPressed(1, 38) then
				ESX.ShowNotification('invalid_amount')
			end
		end
		if c then
		    Wait(1000)
		end
	end
end)

Citizen.CreateThread(function()
    while true do
		Wait(0)
        local a = PlayerPedId()
	    local b = GetEntityCoords(a)
		local c = true
		if GetDistanceBetweenCoords(b, Config.AcidPickup.x, Config.AcidPickup.y, Config.AcidPickup.z, true) < 2 then
		    c = false
			ESX.ShowHelpNotification('Press ~INPUT_CONTEXT~ to pick up acid')
			if IsControlJustPressed(1, 38) then
				TriggerServerEvent('recovery:acid')
				Wait(100000)
			elseif IsControlJustPressed(1, 38) then
				ESX.ShowNotification('invalid_amount')
			end
		end
		if c then
		    Wait(1000)
		end
	end
end)

Citizen.CreateThread(function()
    while true do
		Wait(0)
        local a = PlayerPedId()
	    local b = GetEntityCoords(a)
		local c = true
		if GetDistanceBetweenCoords(b, Config.AcidProcess.x, Config.AcidProcess.y, Config.AcidProcess.z, true) < 2 then
		    c = false
			ESX.ShowHelpNotification('Press ~INPUT_CONTEXT~ to process Acid')
			if IsControlJustPressed(1, 38) then
				TriggerServerEvent('recovery:acidprocess')
			elseif IsControlJustPressed(1, 38) then
				ESX.ShowNotification('invalid_amount')
			end
		end
		if c then
		    Wait(1000)
		end
	end
end)

Citizen.CreateThread(function()
    while true do
		Wait(0)
        local a = PlayerPedId()
	    local b = GetEntityCoords(a)
		local c = true
		if GetDistanceBetweenCoords(b, Config.HeroinPickup.x, Config.HeroinPickup.y, Config.HeroinPickup.z, true) < 2 then
		    c = false
			ESX.ShowHelpNotification('Press ~INPUT_CONTEXT~ to pick up heroin')
			if IsControlJustPressed(1, 38) then
				TriggerServerEvent('recovery:heroin')
				Wait(100000)
			elseif IsControlJustPressed(1, 38) then
				ESX.ShowNotification('invalid_amount')
			end
		end
		if c then
		    Wait(1000)
		end
	end
end)

Citizen.CreateThread(function()
    while true do
		Wait(0)
        local a = PlayerPedId()
	    local b = GetEntityCoords(a)
		local c = true
		if GetDistanceBetweenCoords(b, Config.Heroinprocess.x, Config.Heroinprocess.y, Config.Heroinprocess.z, true) < 2 then
		    c = false
			ESX.ShowHelpNotification('Press ~INPUT_CONTEXT~ to process Heroin')
			if IsControlJustPressed(1, 38) then
				TriggerServerEvent('recovery:heroinprocess')
			elseif IsControlJustPressed(1, 38) then
				TriggerServerEvent('recovery:nope')
			end
		end
		if c then
		    Wait(1000)
		end
	end
end)

Citizen.CreateThread(function()
    while true do
		Wait(0)
        local a = PlayerPedId()
	    local b = GetEntityCoords(a)
		local c = true
		if GetDistanceBetweenCoords(b, Config.CokePickup.x, Config.CokePickup.y, Config.CokePickup.z, true) < 2 then
		    c = false
			ESX.ShowHelpNotification('Press ~INPUT_CONTEXT~ to pick up coke')
			if IsControlJustPressed(1, 38) then
				TriggerServerEvent('recovery:coke')
				Wait(100000)
			elseif IsControlJustPressed(1, 38) then
				ESX.ShowNotification('invalid_amount')
			end
		end
		if c then
		    Wait(1000)
		end
	end
end)

Citizen.CreateThread(function()
    while true do
		Wait(0)
        local a = PlayerPedId()
	    local b = GetEntityCoords(a)
		local c = true
		if GetDistanceBetweenCoords(b, Config.CokeProcess.x, Config.CokeProcess.y, Config.CokeProcess.z, true) < 2 then
		    c = false
			ESX.ShowHelpNotification('Press ~INPUT_CONTEXT~ to process coke')
			if IsControlJustPressed(1, 38) then
				TriggerServerEvent('recovery:cokeprocess')
			elseif IsControlJustPressed(1, 38) then
				ESX.ShowNotification('invalid_amount')
			end
		end
		if c then
		    Wait(1000)
		end
	end
end)

Citizen.CreateThread(function()
    while true do
		Wait(0)
        local a = PlayerPedId()
	    local b = GetEntityCoords(a)
		local c = true
		if GetDistanceBetweenCoords(b, Config.ShroomsPickup.x, Config.ShroomsPickup.y, Config.ShroomsPickup.z, true) < 2 then
		    c = false
			ESX.ShowHelpNotification('Press ~INPUT_CONTEXT~ to pick up shrooms')
			if IsControlJustPressed(1, 38) then
				TriggerServerEvent('recovery:shrooms')
				Wait(100000)
			elseif IsControlJustPressed(1, 38) then
				ESX.ShowNotification('invalid_amount')
			end
		end
		if c then
		    Wait(1000)
		end
	end
end)

Citizen.CreateThread(function()
    while true do
		Wait(0)
        local a = PlayerPedId()
	    local b = GetEntityCoords(a)
		local c = true
		if GetDistanceBetweenCoords(b, Config.ShroomsProcess.x, Config.ShroomsProcess.y, Config.ShroomsProcess.z, true) < 2 then
		    c = false
			ESX.ShowHelpNotification('Press ~INPUT_CONTEXT~ to process shrooms')
			if IsControlJustPressed(1, 38) then
				TriggerServerEvent('recovery:shroomprocess')
			elseif IsControlJustPressed(1, 38) then
				ESX.ShowNotification('invalid_amount')
			end
		end
		if c then
		    Wait(1000)
		end
	end
end)

Citizen.CreateThread(function()
    while true do
		Wait(0)
        local a = PlayerPedId()
	    local b = GetEntityCoords(a)
		local c = true
		if GetDistanceBetweenCoords(b, Config.XanaxPickup.x, Config.XanaxPickup.y, Config.XanaxPickup.z, true) < 2 then
		    c = false
			ESX.ShowHelpNotification('Press ~INPUT_CONTEXT~ to pick up xanax')
			if IsControlJustPressed(1, 38) then
				TriggerServerEvent('recovery:xanax')
				Wait(100000)
			elseif IsControlJustPressed(1, 38) then
				ESX.ShowNotification('invalid_amount')
			end
		end
		if c then
		    Wait(1000)
		end
	end
end)

Citizen.CreateThread(function()
    while true do
		Wait(0)
        local a = PlayerPedId()
	    local b = GetEntityCoords(a)
		local c = true
		if GetDistanceBetweenCoords(b, Config.XanaxProcess.x, Config.XanaxProcess.y, Config.XanaxProcess.z, true) < 2 then
		    c = false
			ESX.ShowHelpNotification('Press ~INPUT_CONTEXT~ to process xanax')
			if IsControlJustPressed(1, 38) then
				TriggerServerEvent('recovery:xanaxprocess')
			elseif IsControlJustPressed(1, 38) then
				ESX.ShowNotification('invalid_amount')
			end
		end
		if c then
		    Wait(1000)
		end
	end
end)

Citizen.CreateThread(function()
    while true do
		Wait(0)
        local a = PlayerPedId()
	    local b = GetEntityCoords(a)
		local c = true
		if GetDistanceBetweenCoords(b, Config.PercPickup.x, Config.PercPickup.y, Config.PercPickup.z, true) < 2 then
		    c = false
			ESX.ShowHelpNotification('Press ~INPUT_CONTEXT~ to pick up percs')
			if IsControlJustPressed(1, 38) then
				TriggerServerEvent('recovery:perc')
				Wait(100000)
			elseif IsControlJustPressed(1, 38) then
				ESX.ShowNotification('invalid_amount')
			end
		end
		if c then
		    Wait(1000)
		end
	end
end)

Citizen.CreateThread(function()
    while true do
		Wait(0)
        local a = PlayerPedId()
	    local b = GetEntityCoords(a)
		local c = true
		if GetDistanceBetweenCoords(b, Config.PercProcess.x, Config.PercProcess.y, Config.PercProcess.z, true) < 2 then
		    c = false
			ESX.ShowHelpNotification('Press ~INPUT_CONTEXT~ to process percs')
			if IsControlJustPressed(1, 38) then
				TriggerServerEvent('recovery:percprocess')
			elseif IsControlJustPressed(1, 38) then
				ESX.ShowNotification('invalid_amount')
			end
		end
		if c then
		    Wait(1000)
		end
	end
end)

Citizen.CreateThread(function()
    while true do
		Wait(0)
        local a = PlayerPedId()
	    local b = GetEntityCoords(a)
		local c = true
		if GetDistanceBetweenCoords(b, Config.LeanPickup.x, Config.LeanPickup.y, Config.LeanPickup.z, true) < 2 then
		    c = false
			ESX.ShowHelpNotification('Press ~INPUT_CONTEXT~ to pick up lean')
			if IsControlJustPressed(1, 38) then
				TriggerServerEvent('recovery:lean')
				Wait(100000)
			elseif IsControlJustPressed(1, 38) then
				ESX.ShowNotification('invalid_amount')
			end
		end
		if c then
		    Wait(1000)
		end
	end
end)
Citizen.CreateThread(function()
    while true do
		Wait(0)
        local a = PlayerPedId()
	    local b = GetEntityCoords(a)
		local c = true
		if GetDistanceBetweenCoords(b, Config.LeanProcess.x, Config.LeanProcess.y, Config.LeanProcess.z, true) < 2 then
		    c = false
			ESX.ShowHelpNotification('Press ~INPUT_CONTEXT~ to process lean')
			if IsControlJustPressed(1, 38) then
				TriggerServerEvent('recovery:leanprocess')
			elseif IsControlJustPressed(1, 38) then
				ESX.ShowNotification('invalid_amount')
			end
		end
		if c then
		    Wait(1000)
		end
	end
end)

local a      = -730659924 -- DO NOT CHANGE UNLESS YOU KNOW WHAT YOUR DOING


Citizen.CreateThread(function()
	RequestModel(a)
	while not HasModelLoaded(a) do
	    Wait(1)
	end
	ped = CreatePed(1, a, Config.Dealer.x, Config.Dealer.y, Config.Dealer.z, 40.0, false, true)
	SetBlockingOfNonTemporaryEvents(ped, true)
	SetPedDiesWhenInjured(ped, false)
	SetPedCanPlayAmbientAnims(ped, true)
	SetPedCanRagdollFromPlayerImpact(ped, false)
	SetEntityInvincible(ped, true)
	FreezeEntityPosition(ped, true)
	TaskStartScenarioInPlace(ped, "WORLD_HUMAN_GUARD_STAND", 0, true);

end)

Citizen.CreateThread(function()
    while true do
		Wait(0)
        local a = PlayerPedId()
	    local b = GetEntityCoords(a)
		local c = true
		if GetDistanceBetweenCoords(b, Config.Dealer.x, Config.Dealer.y, Config.Dealer.z, true) < 2 then
		    c = false
			ESX.ShowHelpNotification('Press ~G~ G ~G~ to offer goods') --- Input text for some odd reason didnt work here. Lawl
			if IsControlJustPressed(1, 58) and not isMenuOpen then
				OpenMenu()
			elseif IsControlJustPressed(1, 58) then
				ESX.ShowNotification('invalid_amount')
			end
		end
		if c then
		    Wait(1000)
		end
	end
end)

function SellOpium()
	TriggerServerEvent('recovery:sellopium')
end

function SellAcid()
	TriggerServerEvent('recovery:sellacid')
end

function SellCoke()
	TriggerServerEvent('recovery:sellcoke')
end

function SellHeroin()
	TriggerServerEvent('recovery:sellheroin')
end

function SellHeroin()
	TriggerServerEvent('recovery:sellheroin')
end

function SellShrooms()
	TriggerServerEvent('recovery:sellshrooms')
end

function SellXanax()
	TriggerServerEvent('recovery:sellxanax')
end

function SellPerc()
	TriggerServerEvent('recovery:sellperc')
end

function SellLean()
	TriggerServerEvent('recovery:selllean')
end

RegisterNetEvent('drug:not')
AddEventHandler('drug:not', function()
	ESX.ShowNotification('You dont have enough!')
end)

RegisterNetEvent('drug:yes')
AddEventHandler('drug:yes', function()
	ESX.ShowNotification('You have to much!')
end)


currentped = nil
Citizen.CreateThread(function()

while true do
  Wait(0)
  local player = GetPlayerPed(-1)
  local playerloc = GetEntityCoords(player, 0)
  local handle, ped = FindFirstPed()
  repeat
    success, ped = FindNextPed(handle)
    local pos = GetEntityCoords(ped)
    local distance = GetDistanceBetweenCoords(pos.x, pos.y, pos.z, playerloc['x'], playerloc['y'], playerloc['z'], true)
    if IsPedInAnyVehicle(GetPlayerPed(-1)) == false then
      if DoesEntityExist(ped)then
        if IsPedDeadOrDying(ped) == false then
          if IsPedInAnyVehicle(ped) == false then
            local pedType = GetPedType(ped)
            if pedType ~= 28 and IsPedAPlayer(ped) == false then
              currentped = pos
              if distance <= 2 and ped  ~= GetPlayerPed(-1) and ped ~= oldped then
                TriggerServerEvent('checkinventory')
                if hs == true then
                  drawTxt(0.90, 1.40, 1.0,1.0,0.4, "Press ~g~E ~w~to sell drugs", 255, 255, 255, 255)
                  if IsControlJustPressed(1, 86) then
                      oldped = ped
                      SetEntityAsMissionEntity(ped)
                      TaskStandStill(ped, 9.0)
                      pos1 = GetEntityCoords(ped)
                      TriggerServerEvent('drugs:trigger')
                      Citizen.Wait(2850)
                      TriggerEvent('sell')
                      SetPedAsNoLongerNeeded(oldped)
                  end
                end
              end
            end
          end
        end
      end
    end
  until not success
  EndFindPed(handle)
end
end)

RegisterNetEvent('sell')
AddEventHandler('sell', function()
    local player = GetPlayerPed(-1)
    local playerloc = GetEntityCoords(player, 0)
    local distance = GetDistanceBetweenCoords(pos1.x, pos1.y, pos1.z, playerloc['x'], playerloc['y'], playerloc['z'], true)

    if distance <= 2 then
      TriggerServerEvent('drugs:sell')
    elseif distance > 2 then
      TriggerServerEvent('selldrugs')
    end
end)


RegisterNetEvent('checkedit')
AddEventHandler('checkedit', function(test)
  hs = test
end)

RegisterNetEvent('pdnot')
AddEventHandler('pdnot', function()

      local coords = GetEntityCoords(GetPlayerPed(-1))

      TriggerServerEvent('esx_phone:send', "police", 'Someone is ss me drugs' , true, {
        x = coords.x,
        y = coords.y,
        z = coords.z
      })
end)

RegisterNetEvent('animation')
AddEventHandler('animation', function()
  local pid = PlayerPedId()
  RequestAnimDict("amb@prop_human_bum_bin@idle_b")
  while (not HasAnimDictLoaded("amb@prop_human_bum_bin@idle_b")) do Citizen.Wait(0) end
    TaskPlayAnim(pid,"amb@prop_human_bum_bin@idle_b","idle_d",100.0, 200.0, 0.3, 120, 0.2, 0, 0, 0)
    Wait(750)
    StopAnimTask(pid, "amb@prop_human_bum_bin@idle_b","idle_d", 1.0)
end)

function drawTxt(x,y ,width,height,scale, text, r,g,b,a, outline)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    if(outline)then
      SetTextOutline()
    end
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end