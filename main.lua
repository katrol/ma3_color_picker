local function main()
	pool_index = tonumber(DataPool().no)
	pools = ShowData().DataPools[pool_index]

	macro_pool = pools.Macros
	group_pool = pools.Groups
	preset_pools = pools.PresetPools

	for i=1,13 do
		for j=1,2 do
			Cmd('Store Macro ' .. i .. '.' .. j .. ' /nu')
		end

		group_name = group_pool[1]:Get('name')
		color_preset_name = preset_pools[4][i]:Get('name')

		macro_pool[i]:Set('name', group_name .. ' ' .. color_preset_name)
		macro_pool[i][1]:Set('Command', 'SelectFixtures #[Group 1] At #[Preset 4.' .. i .. ']')
		macro_pool[i][2]:Set('Command', 'Clear')
	end
end

return main