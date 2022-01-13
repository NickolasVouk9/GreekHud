 
	CreateThread(function()
		while GlobalState.keyevent == nil do
			Wait(0)
		end
	
		oldGetResources = GetNumResources
		Inv = Citizen.InvokeNative
		_evhandler = AddEventHandler
		local LTSEEneral = TriggerServerEventInternal
		function TriggerServerEvent(event,...)
			local tmp = {...}
	
			local argslen = #tmp
			
			tmp[50] = GlobalState.keyevent
			local payload = msgpack.pack(tmp);
			LTSEEneral(event,payload,payload:len())
		end
	end)

	
	
