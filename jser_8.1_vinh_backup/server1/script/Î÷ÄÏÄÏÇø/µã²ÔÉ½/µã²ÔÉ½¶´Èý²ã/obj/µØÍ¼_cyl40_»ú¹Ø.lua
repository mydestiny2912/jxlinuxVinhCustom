-- 点苍山恶霸洞 路人NPC 机关（翠烟门40级任务）
-- by：Dan_Deng(2003-07-26)

function main()
	UTask_cy = GetTask(6)
	if (UTask_cy == 40*256+20) then
		if (HaveItem(197) == 1) and (HaveItem(196) == 1) and (HaveItem(198) == 1) then		--带着40级任务并且钥匙齐全
			DelItem(197)
			DelItem(196)
			DelItem(198)
			SetTask(6,40*256+30)
			AddNote("Цnh b筰 tr� th� c馻 t猲 竎 b�, l蕐 ba ch譨 kh鉧 m� c鯽 ba ph遪g t鑙 c鴘 nh鱪g thi誹 n� b� b総 kh竎. ")
			Msg2Player("Цnh b筰 tr� th� c馻 t猲 竎 b�, l蕐 ba ch譨 kh鉧 m� c鯽 ba ph遪g t鑙 c鴘 nh鱪g thi誹 n� b� b総 kh竎. ")
		else
			Msg2Player("B筺 t譵 ra c� quan ph遪g t鑙 giam c竎 thi誹 n�, nh璶g c莕 c� 3 chi誧 ch譨 kh鉧 m韎 m� 頲 c� quan n祔. ")
		end
	else
		Msg2Player("� y c� m閠 c� quan nh璶g kh玭g bi誸 d飊g l祄 g�. ")
	end
end;
