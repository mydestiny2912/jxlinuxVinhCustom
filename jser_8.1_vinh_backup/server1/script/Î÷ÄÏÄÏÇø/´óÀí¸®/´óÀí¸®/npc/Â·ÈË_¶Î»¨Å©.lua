-- 大理城 路人NPC 段花农（翠烟门30级任务）
-- by：Dan_Deng(2003-07-26)

function main()
	UTask_cy = GetTask(6)
	if (UTask_cy == 30*256+10) then		--30级任务进行中（救孙女启动）
		Talk(6,"","祅 i gia, nghe n鉯 ngi l� m閠 tay tr錸g tr� gi醝, ta n y mu鑞 nh� l穙 b� ch� b� quy誸 tr錸g c﹜ tr� 'V� Y Ngh� Thng'.","Hu hu hu.....ch竨 g竔 ng thng c馻 ta.....","Чi i gia! Ch竨 g竔 玭g th� n祇?","N� b� m閠 t猲 th� ph� � 觤 Thng s琻 b総 甶 r錳, b﹜ gi� kh玭g bi誸 s鑞g ch誸 ra sao?.....","祅 i gia! ng lo l緉g! Ta s� 甶 c鴘 ch竨 g竔 c馻 玭g.","N� hi謕! Ngi ng l� m閠 ngi t鑤! Ch� c莕 c鴘 頲 ch竨 ta, chuy謓 g� ta c騨g h鴄! ")
		SetTask(6,30*256+20)
		AddNote("дn 觤 Thng s琻, t譵 th� ph� gi秈 c鴘 ch竨 g竔 c馻 ngi tr錸g tr� ")
		Msg2Player("дn 觤 Thng s琻, t譵 th� ph� gi秈 c鴘 ch竨 g竔 c馻 ngi tr錸g tr� ")
	elseif (UTask_cy == 30*256+30) then		--30级任务进行中（救孙女完成）
		Talk(5,"","C竚 琻 ngi  c鴘 ch竨 ta. Чi 琻 i c n祔 ta s� kh玭g qu猲.","祅 i gia! g bi誸 c竎h tr錸g ' V� Y Ngh� Thng' ph秈 kh玭g?","Ti觰 c� nng! Coi nh� c� nng h醝 ng ngi,b� quy誸 tr錸g V� Y Ngh� Thng ch� c� l穙 m韎 bi誸, t� trc t韎 nay v鑞 kh玭g truy襫 cho ngi ngo礽 nh璶g ngi  c鴘 m筺g ch竨 g竔 c馻 ta th� ta s� truy襫 l筰 cho ngi.","Tr錸g c﹜ tr� V� Y Ngh� Thng th� ph秈 c�  3 lo筰 nguy猲 li謚: m閠 l� Ng﹏ Tuy誸 Ng� � Nh� H秈. Hai l� B輈h Thng Ph鬾g 謕 b猲 su鑙 H� 謕, ba l� con giun  � V﹏ N玭g nh."," t� Чi Gia! ")
		SetTask(6,30*256+40)
		AddNote("Tr錸g V� Y Ngh� Thng nh蕋 nh ph秈 c� Ng﹏ Tuy誸 Ng� � Nh� H秈, B輈h Thng Phng 謕 b猲 su鑙 H� 謕, con giun  � g莕 V﹏ N玭g nh ")
		Msg2Player("Tr錸g V� Y Ngh� Thng nh蕋 nh ph秈 c� Ng﹏ Tuy誸 Ng� � Nh� H秈, B輈h Thng Phng 謕 b猲 su鑙 H� 謕, con giun  � g莕 V﹏ N玭g nh ")
	elseif (UTask_cy == 30*256+20) then
		Talk(1,"","N� hi謕! Ch� c莕 c� th� c鴘 頲 ch竨 g竔 c馻 ta chuy謓 g� ta c騨g h鴄 v韎 ngi! ")
	else
		Talk(1,"","Tr錸g lo筰 hoa n祔 v鮝 l� m閠 m玭 h鋍 v鮝 l� m閠 m玭 ngh� thu藅.")
	end
end
