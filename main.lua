local function main()
	pool_index = tonumber(DataPool().no)
	macro_pool = ShowData().DataPools[pool_index].Macros
	for i=1,13 do
		for j=1,2 do
			Cmd('Store Macro ' .. i .. '.' .. j .. ' /nu')
		end
		macro_pool[i]:Set('name', 'test' .. i)
		macro_pool[i][1]:Set('Command', 'SelectFixtures #[Group 1] At #[Preset 4.' .. i .. ']')
		macro_pool[i][2]:Set('Command', 'Clear')
	end
end

return main