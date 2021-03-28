<?xml version="1.0" encoding="UTF-8"?>
<ModuleFile xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <UiMod name="QuestBegone" version="1.0.1" date="2021-03-27">
		<VersionSettings gameVersion="1.4.8" windowsVersion="1.0" savedVariablesVersion="1.0" /> 
		<Author name="Idrinth" />
        <Description text="Automatically drops scenario quests that were not completed" />
        <Files>
            <File name="quest-begone.lua" />
        </Files>
        <OnInitialize>
             <CallFunction name="QuestBegone.OnInitialize" />
        </OnInitialize>
        <Dependencies>
            <Dependency name="EA_TomeOfKnowledge"/>
        </Dependencies>
    </UiMod>
</ModuleFile>