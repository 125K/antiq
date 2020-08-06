licores = {
	vector3(1732.33, 6421.0, 35.04),
	vector3(1735.43, 6419.48, 35.04),
	vector3(1957.79, 3746.93, 32.34),
	vector3(1960.86, 3748.72, 32.34),
	vector3(1169.34, 2713.23, 38.16),
	vector3(1166.9, 2714.57, 38.16),
	vector3(548.22, 2663.89, 42.16),
	vector3(544.82, 2663.41, 42.16),
	vector3(2549.97, 382.81, 108.62),
	vector3(2550.12, 385.93, 108.62),
	vector3(-3249.44, 1002.03, 12.83),
	vector3(-3249.09, 1005.48, 12.83),
	vector3(-3046.3, 583.81, 7.91),
	vector3(-3047.28, 587.04, 7.91),
	vector3(-1219.14, -910.67, 12.33),
	vector3(-2964, 387.43, 15.04),
	vector3(-2962.73, 389.64, 15.04),
	vector3(375.74, 333.06, 103.57),
	vector3(379.08, 332.2, 103.57),
	vector3(1131.15, -979.35, 46.42),
	vector3(1130.42, -982.13, 46.42),
	vector3(-1222.3, -912.57, 12.33),
	vector3(-1482.33, -378.83, 40.16),
	vector3(-1482.87, -376.34, 40.16)
}

Citizen.CreateThread(function()
	while true do
		Wait(0)
		ped = GetPlayerPed(-1)
		
		for _, licor in next, licores do
			local distance = GetDistanceBetweenCoords(GetEntityCoords(ped), licor, true)
			if distance < 2.7 then
				DisableControlAction(2, 44, true)
			end
		end
	end
end)
