-- 江南区 罗宵山 战斗_云部山鹰.lua （消灭采花贼任务）
-- By: Dan_Deng(2004-05-28)

function OnDeath()
	Uworld43 = GetTask(43)
	if (Uworld43 >= 60) and (Uworld43 < 69) then			-- 没杀够10个
		SetTask(43,Uworld43 + 1)
		Msg2Player("B筺 gi誸 頲 m閠 t猲 V﹏ B� s琻 g ")
	elseif (Uworld43 == 69) or (Uworld43 == 70) then		-- 已经杀够10个
		SetTask(43,70)
		Msg2Player("B筺 gi誸 頲 mi m蕐 t猲 V﹏ B� s琻 g, nh譶 l筰 xem g ch� c� ph秐 鴑g g� kh玭g. ")
	end
end
