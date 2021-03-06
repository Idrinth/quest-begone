QuestBegone = {}
QuestBegone.OnInitialize = function()
	RegisterEventHandler(SystemData.Events.LOADING_END, "QuestBegone.OnZoneChange")
end

QuestBegone.OnZoneChange = function()
	if GameData.Player.isInScenario then
		return
	end
	for _,quest in pairs(TomeWindow.QuestJournal.questData) do
		local isCityZone = quest.zones and quest.zones[1] and (quest.zones[1].id == 161 or quest.zones[1].id == 162);
		local hasNoZone = not quest.zones or table.getn(quest.zones) == 0;
		local isRvRQuest = quest.questTypes and quest.questTypes[3];
		local isExpectedStructure = quest.conditions and table.getn(quest.conditions) == 1 and quest.conditions[1] and quest.conditions[1].maxCounter == 1;
		local hasNoProgress = quest.conditions and quest.conditions[1] and quest.conditions[1].curCounter == 0
		local matchesDescription = quest.conditions and quest.conditions[1] and quest.conditions[1].name:match(L"^Win the .+ [sS]cenario$")
		if (isCityZone or hasNoZone) and isExpectedStructure and isRvRQuest and matchesDescription and hasNoProgress then
			AbandonQuest(quest.id)
		end
	end
end
