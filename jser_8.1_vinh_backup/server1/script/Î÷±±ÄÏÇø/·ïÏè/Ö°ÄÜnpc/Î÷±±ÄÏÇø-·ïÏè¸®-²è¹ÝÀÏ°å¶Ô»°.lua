--西北南区 凤翔府 茶馆老板对话
Include("\\script\\misc\\eventsys\\eventsys.lua")
Include("\\script\\dailogsys\\dailog.lua")

function main()
	local nNpcIndex = GetLastDiagNpc()
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end
	local tbDailog = DailogClass:new(szNpcName)
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName,tbDailog , nNpcIndex)
	if getn(tbDailog.tbOptionList) > 0 then
		tbDailog:AddOptEntry("Ta n t譵 玭g c� vi謈 kh竎", old_main)
		tbDailog:Show()
	else
		old_main()
	end
end
function old_main()
	i = random(0,1)
	if (i == 0) then
		Say("Tr� c� th� tu t﹎ dng t竛h, m閠 ng鬽 tr� xanh c� th� khi課 con ngi qu猲 甶 th� t鬰.",0)
	else
		Say("Tr� c馻 ch髇g ta n鎖 ti課g kh緋 n琲.", 0)
	end
end