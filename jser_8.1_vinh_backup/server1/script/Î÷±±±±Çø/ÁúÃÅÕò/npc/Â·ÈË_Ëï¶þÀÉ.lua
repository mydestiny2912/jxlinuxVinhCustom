-- 龙门镇　路人　孙二郎(救小娟任务)
-- by：Dan_Deng(2003-09-16)

Include("\\script\\global\\repute_head.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main()
	if allbrother_0801_CheckIsDialog(199) == 1 then
		allbrother_0801_FindNpcTaskDialog(199)
		return 0;
	end
	Uworld41 = GetByte(GetTask(41),1)
	if (GetLevel() >= 40) and (GetReputeLevel(GetRepute()) >= 5) then		-- 符合任务条件
		if (Uworld41 == 0) then					-- 任务不能直接从孙二郎处启动
			if (random(0,1) == 0) then
				Talk(1,"","!...")
			else
				Talk(1,"","T玭 Nh� Lang:............ ")
			end
		elseif (Uworld41 == 5) then			-- 任务正式启动
			Talk(1,"U41_get","Chuy謓 g� khi課 huynh phi襫 n穙 v藋? V� i t萿 b猲 c筺h huynh sao kh鉩 thng t﹎ v藋?")
		elseif (Uworld41 == 100) then			-- 任务完成
			Talk(2,"U41_prise","Th藅 c秏 t� ﹏ nh﹏! Чi ﹏ i c n祔 ta s� kh玭g nbao gi阠qu猲! Trong n祔 l� linh dc c馻 m閠 v� s� Thi誹 L﹎  t苙g ta. C� th� h� tr� ti襪 n╪g.Xin ng t� ch鑙!","Х nh� v藋, ta t� ch鑙 c騨g kh玭g 頲!")
		elseif (Uworld41 == 255) then			-- 任务完成后
			Talk(1,"","L骳 n祔 ta kh玭g d竚 cho Ti觰 Quy猲 ra kh醝 nh�, nh璶g c� nh� v藋 th� kh玭g l� c竎h l﹗ d礽. C� l� ph秈 g� n� th玦.")
		else											-- 任务进行中
			Talk(1,"","H玬 qua, Ti觰 Quy猲  b� Чi vng c馻 C�  чng cp 甶, 衟 l祄 竝 tr筰 phu nh﹏. B﹜ gi� n鉯 kh玭g ch鮪g th� m鋓 s�  qu� mu閚.! ")
		end
	else							-- 否则转缺省对话
		Talk(1,"","C� ngi n鉯 Long M玭 Tr蕁 ch髇g ta ch� t遖n tr閙 cp, ng l� kh玭g bi誸 g�! Ta d竚 cu閏 l� kh玭g qu� hai ba n╩ n鱝, Long M玭 Tr蕁 s� xu蕋 hi謓 m閠 nh﹏ v藅 nh thi猲 l藀 a")
	end
end;

function U41_get()
	Say("! Ti觰 Quy猲 nh� ta m蕐 ng祔 trc b� Чi vng C�  Tr筰  �, n鉯 l� mu鑞 con b� l祄 竝 tr筰 phu nh﹏ g� . H玬 qua  n cp 甶",2,"H╪g h竔 甶 c鴘 ngi /U41_get_yes","An 駃 v礽 c﹗ cho xong /U41_get_no")
end

function U41_get_yes()
	Talk(2,"","Чi Vng g�? Gi鱝 thanh thi猲 b筩h nh藅 l筰 cp d﹏ n�? Ta s� 甶 c鴘 c� 蕐 v�!","Xin hi謕 kh竎h gi髉 cho! C�  Tr筰 n籱 trong C� Dng ng!")
	Uworld41 = random(1,15)*256*256 + 10			-- 第三字节为（二进制的0001 - 1111），第一字节为10
	SetTask(41,Uworld41)
	Msg2Player("Ti誴 nh薾 nhi謒 v�, mang Ti觰 Quy猲 tr� v� t� C�  Tr筰. ")
	AddNote("Ti誴 nh薾 nhi謒 v�, mang Ti觰 Quy猲 tr� v� t� C�  Tr筰. ")
end

function U41_prise()
	AddProp(5)											-- 奖励1点潜能
	add_repute = ReturnRepute(30,50,3)			-- 声望奖励：最大30点，从50级起每级递减3%
	AddRepute(add_repute)
	Uworld41 = SetByte(GetTask(41),1,255)
	SetTask(41,Uworld41)
	Ubonus86 = GetTask(86) + 1					-- 记录任务奖励了1点潜能(第一字节+1)
	if (GetByte(Ubonus86,1) >= 250) then		-- 容错：上限为250点
		Ubonus86 = 250
	end
	SetTask(86,Ubonus86)
	AddNote("C鴘 Ti觰 Quy猲 mang v�, nhi謒 v� ho祅 th祅h. ")
	Msg2Player("<#> Nhi謒 v� ho祅 th祅h, danh v鋘g c馻 b筺 t╪g th猰 "..add_repute.."<#> 甶觤.")
	Talk(1,"KickOutSelf","U鑞g xong linh dc, v薾 c玭g n鯽 bu鎖. B筺 c秏 th蕐 ti襪 n╪g t╪g th猰 m閠 甶觤.")
end

function U41_get_no()
	Talk(2,"","Th藅 qu� ng! B鋘 gi芻 cp n祔 th藅 ch糿g xem vng ph竝 ra g� m�!","Th阨 bu鎖 n祔 c遪 c� ai n鉯 vng ph竝 sao?")
end

function no()
end
