local module = {};

function module:GetLocation()
	local httpService = game:GetService("HttpService");
	local result;

	-- Get Location --
	local g, b = pcall(function()
		result = httpService:JSONDecode(httpService:GetAsync("https://api4.my-ip.io/ip.json"));
	end)

	local ip = result.ip;

	if g and ip then
		local location;
		local success, err = pcall(function()
			location = httpService:JSONDecode(httpService:GetAsync("http://ip-api.com/json/" .. ip));
		end)

		if success and location.region and location.regionName then
			print(location.region .. "," .. location.regionName);
		end
	end
end

return module;