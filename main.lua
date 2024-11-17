local function main()
	for i=1,13 do
		Cmd('Store Macro ' .. i .. '.1 /nu')
		Cmd('Store Macro ' .. i .. '.2 /nu')
		ShowData().DataPools[1].Macros[i]:Set('name', 'test' .. i)
		ShowData().DataPools[tonumber(DataPool().no)].Macros[i][1]:Set('Command', 'SelectFixtures #[Group 1] At #[Preset 4.' .. i .. ']')
		ShowData().DataPools[tonumber(DataPool().no)].Macros[i][2]:Set('Command', 'Clear')
	end
end

return main