--西南北区 成都府 路人2肖婆婆对话
-- update by xiaoyang(2004\4\16) 娥眉90级任务

Include("\\script\\global\\repute_head.lua")

function main(sel)
	Uworld125 = GetTask(125)
	Uworld36 = GetByte(GetTask(36),1)
	if (Uworld125 < 10) and (Uworld36 == 127) and (GetReputeLevel(GetRepute()) >= 5) and (GetLevel() >= 90) and (GetFaction() ~= "emei") then
		Talk(8,"Uworld125_task","Уo l� xu﹏ phong nh蕋 b玦 t鰑, giang h� d� v� th藀 ni猲 ng. C竎 h� l璾 l筩 trong giang h� kh玭g th蕐 m謙 sao?","Th� gian v蒼 c遪 nhi襲 kh� 秈, d� c� m謙 m醝 c騨g ph秈 ki猲 tr�. Ch糿g l� ng nh譶 xem th� o lu﹏ h錳, cam t﹎ nc ch秠 b蘯 tr玦, th﹏ n祔 v� c玭g kh玭g c遪 � ngh躠 g� n鱝!","T鑤! Tu鎖 tr� nh璶g c� ch� kh�! Ta c� m閠 nhi謒 v� n祔, ngic� d竚 l祄 kh玭g?","L� nhi謒 v� g�?","Nga Mi ph竔 s竛g ch� ra m閠 b� V� T� Thi猲 Th� c� tuy謙 th� v� c玭g  t鮪g 頲 l璾 truy襫. Trc y kh玭g l﹗ ta nh薾 頲 tin b� Thi猲 Th� n祔  xu蕋 hi謓 � g莕 khu v鵦 n骾 Thanh Th祅h, nh璶g ch璦 c� ai t譵 頲. Ngi c� th� 甶 m閠 chuy課 頲 kh玭g?","B� kh玭g s� sau khi l蕐 頲 b� ki誴 ta s� chi誱 l祄 c馻 ri猲g sao?","Ha! Ha! Ha!...V� T� Thi猲 Th� ch� ai c� duy猲 m韎 c 頲. Cho d� t譵 頲 r錳, kh玭g c� c竎h  m� ra c騨g ch� l� u鎛g c玭g. C� thi猲 h� n祔, e r籲g ch� c� b� b� ta m韎 c 頲!","H鉧 ra nh� th�.")
   elseif (Uworld125 == 15) and (HaveItem(388) == 1) then
   	Talk(10,"Uworld125_fire","Th� n祇? Kh玭g u鎛g ph� c玭g s鴆 ch�?","е t�  l蕐 頲 r錳.","Лa ta xem...Qu� l� V� T� Thi猲 Th� r錳.","Xem ra t筰 h� l� ngi th藅 c� duy猲.","M藅 t辌h m� ngi 產ng gi�, giang h� kh玭g bi誸 bao nhi猽 ngi th蘭 mu鑞!","Cu鑙 c飊g c騨g a v� an to祅.","V蒼 ch璦 xong! Ta n鉯 cho ngi bi誸, ta ch輓h l�  t� c馻 Nga Mi ph竔 萵 n竨 t筰 Th祅h Й n祔. Chng m玭 Thanh Hi觰 S� Th竔 v鮝 c� m藅 l謓h giao nhi謒 v� m韎 cho ngi! H穣 mau thi h祅h!","T遪 b� b� th� sao?","Ta s� gi髉 ngi ng╪ c秐 nh鱪g t猲 o t芻 mu鑞 cp m藅 t辌h!","Tu﹏ l謓h!")
   elseif (Uworld125 == 30) and (HaveItem(389) == 1) then
   	Talk(6,"Uworld125_change","R鑤 cu閏 ngi c騨g  n?","Sao?","V鮝 nh薾 頲 b� c﹗ a th� c馻 chng m玭, g鋓 ngi l藀 t鴆 quay v� Nga Mi","L筰 c� vi謈 g� �?","Trong th� kh玭g n鉯 r�, nh璶g theo l雐 c馻 Chng m玭, th� vi謈 n祔 r蕋 c莕 k輕!","Ta l藀 t鴆 甶 ngay!")
   elseif (Uworld125 == 10) then
   	Talk(2,"","Th� n祇? Kh玭g t譵 頲 Thi猲 Th� h�?","Xin ng t鴆 gi薾! е t� nh蕋 nh s� t譵 頲!")
   elseif (Uworld125 == 20) and (HaveItem(388) == 0) then
   	Talk(1,"","Thi猲 Th� ph秈 giao v� cho chng m玭 Thanh Hi觰 s� th竔 Nga Mi, kh玭g ph秈 giao cho l穙 l� xong vi謈")
		AddEventItem(388)
		Msg2Player("箃 頲 V� T� Thi猲 Th� c馻 Nga Mi ")
   elseif (Uworld125 == 30) then
   	Talk(1,"","Ngi kh玭g c� Nga mi l謓h ti詎,l祄 sao ch鴑g minh ngi  giao cho chng m玭?")
   elseif (Uworld125 >= 50) then
   	Talk (1,"","Ti觰 t�, giang h� hi觤 竎, c莕 ph秈 b秓 tr鋘g th﹏ m譶h. ")
   else
		Talk(1,"","Ti觰 H鏽 H鏽  th藅 l� m閠 con ng鵤 l祄 h筰 c� n, kh玭g tr閙 g� b総 ch�, th� 鴆 hi誴 n� nhi, g﹜ phi襫 ph鴆 cho m鋓 ngi, g� ch� g譪騨g kh玭g y猲, c騨g kh玭g c� ngi qu秐.")
	end
end

function Uworld125_task()
	if (GetCamp() == 0) and (GetTask(75) < 255) then		-- 白名未学野球拳的，不允许接任务
		Talk(1,"","Xem d竛g ngi nhu nhc y誹 畊鑙, kh玭g ch辵 n鎖 gi� sng! Ta ch� n鉯 a th玦, ngi n猲 luy謓 v� c玭g, sau  r錳 h穣 n鉯. ")
	else
		Say("Sau khi xong vi謈, ta s� h藆 t�! Ra giang h� c莕 ph秈 c� l� ph�.",2,"Л頲,  t� s� 甶 m閠 chuy課 n Thanh Th祅h. /Uworld125_yes","K� h蘮 n祔 c遪 c� vi謈, e r籲g kh� m� tu﹏ m謓h 頲. /Uworld125_no")
	end
end

function Uworld125_yes()
	SetTask(125,10)
	Msg2Player("Tu﹏ l謓h Ti猽 b� b� 甶 thanh Th祅h t譵 b� ki誴 ")
	AddNote("Tu﹏ l謓h Ti猽 b� b� 甶 thanh Th祅h t譵 b� ki誴 ")
end

function Uworld125_no()
end

function Uworld125_fire()
	SetTask(125,20)
	Earn(10000)
	Msg2Player("Ti猽 b� b� p t� b筺 10000 lng b筩, ng th阨 nh� b筺 h穣 甧m Thi猲 Th� n t苙g cho Nga Mi. ")
	AddNote("Thay Ti猽 b� b� t苙g Thi猲 Th� cho Nga Mi ")
end

function Uworld125_change()
	SetTask(125,40)
	DelItem(389)
	Msg2Player("Nh薾 頲 chim b� c﹗ a th� c馻 Thanh Hi誹 s� th竔, tr� l猲 Nga Mi ")
	AddNote("Nh薾 頲 chim b� c﹗ a th� c馻 Thanh Hi誹 s� th竔, tr� l猲 Nga Mi ")
end
