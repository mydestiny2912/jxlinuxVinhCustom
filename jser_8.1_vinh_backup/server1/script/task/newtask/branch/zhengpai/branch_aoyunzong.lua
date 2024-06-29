-- 新任务系统正派支线管理npc
-- BY：XIAOYANG（2004-11-30）

 Include("\\script\\task\\newtask\\newtask_head.lua")
 Include("\\script\\task\\newtask\\branch\\branch_head.lua")
 Include("\\script\\task\\newtask\\branch\\branch_prize.lua")
 Include("\\script\\task\\newtask\\branch\\branch_problem.lua")
 Include("\\script\\task\\newtask\\education_setnpcpos.lua")
 Include("\\script\\task\\newtask\\branch\\branch_bwsj.lua")

function task_aoyunzong()
	branchTask_BW1()
	branchTask_GainBW1()
	branchTask_JoinSJend1()
	local curCamp = nt_getCamp()
	Uworld1000 = nt_getTask(1000)
	Uworld1001 = nt_getTask(1001) --正派主线
	Uworld183 = nt_getTask(183)
	Uworld1050 = nt_getTask(1050) --正派20-30支线
	Uworld1051 = nt_getTask(1051) --正派30-40支线
	Uworld1052 = nt_getTask(1052) --正派40-50支线
	Uworld1053 = nt_getTask(1053) --正派50-60支线
	Uworld1011 = nt_getTask(1011) --正派支线的杀怪任务变量
	Uworld196 = nt_getTask(196) --正派全奖励
	local name = GetName()  
---------------------------------------------------------------教育任务------------------------------------------------------------------------
	if (	Uworld1000 > 0 ) and ( Uworld1000 < 1000 ) then
		if (( Uworld1000 == 300 ) or ( Uworld1000 == 310 )) and ( curCamp == 0 ) then 
			nt_setTask(1000,310) --环节16start
			Talk(3,"Uworld1000_zfz1",name..": Ng� Gia b秓 ta n, y l� th� c馻 Ng� Gia!","Ng� gia? Xem qua th� th� ch綾 l� kh玭g sai r錳. Mu玭 d苖 阯g xa, b﹜ gi�  l� m颽 ng, mau v祇 nh� u鑞g b譶h ru n鉵g, ╪ ch﹏ d� nng, r錳 t輓h ti誴.","Ngi c� th� c� th� d筼 ch琲 trong th祅h, d飊g ph輒 Tab m� b秐  nh�  d� xem! Sau  h穣 n t譵 ta!")
		elseif (( Uworld1000 == 320 ) or ( Uworld1000 == 330 )) and ( curCamp == 0 ) then
			nt_setTask(1000,330) --环节17start
			Talk(2,"Uworld1000_zfz2",name..": Ta  xem qua r錳..","V藋 頲, h穣 甶 t譵 V� L﹎ Truy襫 Nh﹏.")
		elseif (( Uworld1000 == 420 ) or ( Uworld1000 == 430 )) and ( curCamp == 0 ) and ( Uworld1001 < 10 ) then
			nt_setTask(1000,430) --环节22start
			Talk(5,"Uworld1000_zfz3","V� r錳 �! Зy l� t骾 th� c馻 ngi! Xem xong ngi t� bi誸 ph秈 l祄 g�!",name..":......Thay ta c竚 琻 Ng� Gia."," Sau khi ho祅 th祅h nhi謒 v� Ch輓h tuy課 h穣 quay l筰 y t譵 ta. Ta c� v礽 nhi謒 v� nh� cho ngi, n誹 ho祅 th祅h s� c� ph莕 thng h琻 mong i. Coi nh� thay Ng� Ca gi髉  ngi.",name..": Л頲! Ta nh� r錳.","Ngi v蒼 c� th� l祄 nhi謒 v� phe kh竎, c� th� t 頲 nhi襲 甶觤 kinh nghi謒, nh璶g h� v蒼 xem ngi l� ngi ngo礽, n猲 s� kh玭g t苙g ngi nh鱪g v藅 ph萴 qu� b竨. Ngi c� th� 甶 t譵 Long Ng� trong c竎 th玭 tr蕁 h醝 th╩.")
		elseif ( Uworld1000 == 420 ) and ( curCamp == 0 ) and ( Uworld1001 > 10 ) then
			Talk(1,"Uworld1000_finishzhengpai","Ngi  b総 u ti誴 nh薾 nhi謒 v� c竎 phe, ta kh玭g c遪 g� d箉 ngi. H穣 甶 甶.")
		elseif (( Uworld1000 == 430 ) or ( Uworld1000 == 440 )) and ( curCamp == 0 )  and ( HaveCommonItem(6,1,131) == 0 ) and ( Uworld1001 < 10) then 
			Say("T筰 sao quay l筰? Hay l�  qu猲 t骾 th� � ch� ta.",2,"Tu﹏ l謓h!/Uworld1000_zfz4","Kh玭g ph秈! Ch� l� quay l筰 th╩ 玭g m� th玦!/Uworld1000_no1")
		else
			Talk(1,"","T譵 ta u鑞g ru? Л頲 th玦, ch� n祇 kh玭g hi觰 nh蕁 <color=red>F12<color> xem. N誹 ngi 產ng l祄 <color=red>nhi謒 v� S� nh藀<color>,   kh玭g th� ti誴 nh薾 nhi謒 v� kh竎.")
		end
	else
---------------------------------------------------------------正派支线任务-----------------------------------------------------------------------	
		if (( Uworld1050 == 1000 ) and ( GetBit(GetTask(196),1) ~= 1)) or (( Uworld1051 == 1000 ) and ( GetBit(GetTask(196),2) ~= 1)) or (( Uworld1052 == 1000 ) and ( GetBit(GetTask(196),3) ~= 1)) or  (( Uworld1053 == 1000 ) and ( GetBit(GetTask(196),4) ~= 1)) then
			Describe(DescLink_AoYunZong.."<#>:  Ta r蕋 h礽 l遪g v韎 bi觰 hi謓 c馻 ngi, t苙g ngi m鉵 b秓 v藅 n祔!",1,"Nh薾 l穘h b秓 v藅/allprize_zhengpai")
		elseif ( Uworld1053 == 70 ) or ( Uworld1053 == 80 ) then 
			if ( GetLevel() >= 50 ) and ( GetLevel() <  60 ) then 
				nt_setTask(1053,80)
				Describe(DescLink_AoYunZong.."<#>:  Sao? Nh筩 Nguy猲 So竔 kh玭g ph秈 do ngi c馻 L﹎ Uy猲 Nhai h筰, v藋 th� l� ai? Ch糿g l� ng sau c遪 c� th� l鵦 l韓 產ng thao t髇g?.<enter>",1,"K誸 th骳 i tho筰/Uworld1053_zfz3")
			else 
				Talk(1,"Uworld1000_zfz6","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end
		elseif ( Uworld1052 == 110 ) or ( Uworld1052 == 120 ) then 
			if ( GetLevel() >= 40 ) and ( GetLevel() <  50 ) then 
				nt_setTask(1052,120)
				Describe(DescLink_AoYunZong.."<#>:  L祄 t鑤 l緈! Ta bi誸 ngi s� kh玭g ph� l遪g hy v鋘g c馻 ta.",
				1,"K誸 th骳 i tho筰/Uworld1052_zfz5")
			else 
				Talk(1,"Uworld1000_zfz6","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end		
		elseif ( Uworld1052 == 80 ) or ( Uworld1052 == 90 ) then 
			if ( GetLevel() >= 40 ) and ( GetLevel() <  50 ) then 
				nt_setTask(1052,90)
				Describe(DescLink_AoYunZong.."<#>:  Quay l筰 t譵 ta c� vi謈 �? L骳 n祔 n猲 輙 li猲 l筩 th� h琻.<enter>"
				..name.."<#>:  V﹏ T玭g, 玭g bi誸 Du Sng T﹏ 產ng � u kh玭g?.<enter> H緉 產ng � b猲 ngo礽 Th祅h Й, h緉 kh玭g ph秈 k� x蕌, c� th� tha cho h緉 con 阯g s鑞g.<enter>",
				1,"K誸 th骳 i tho筰/Uworld1052_zfz4")
			else 
				Talk(1,"Uworld1000_zfz6","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end			
		elseif (( Uworld1052 == 20 ) or ( Uworld1052 == 30 )) and ( Uworld1011 == 20 ) then --增加了判断是否在宋金pk了一场的变量Uworld1011
			if ( GetLevel() >= 40 ) and ( GetLevel() <  50 ) then 
				nt_setTask(1052,30)
				Describe(DescLink_AoYunZong.."<#>:  Th蕐 ch璦, nh﹏ ngo筰 h鱱 nh﹏, thi猲 ngo筰 h鱱 thi猲. V� ng cao th� v� s�. V� h鋍 v鑞 kh玭g c� c秐h gi韎.<enter>"
				..name.."<#>:  Th� n╩ x璦 v� n祇 畂箃 頲 danh hi謚?<enter>L� 1 v� cao nh﹏ c馻 Ng� чc gi竜.<enter>"
				..name.."<#>:  Ng� чc gi竜? <enter>ng v藋, ng ti誧 sau khi 畂箃 danh hi謚 kh玭g l﹗ ngi n祔  bi課 m蕋. Nghe n鉯 sau khi chi課 th緉g ngi n祔 qu� c �  h裯 quy誸 chi課 v韎 чc C� Ki誱,  l� 1 cu閏 chi課 kinh thi猲 ng a nh璶g k誸 qu� th� kh玭g "
				..name.."<#>:  Tr薾 t� th� nh� nh璶g b猲 trong l筰 l� b� m藅 l韓.<enter>Nhi謒 v� ti誴 theo r蕋 kh�, c� th� ngi c騨g s� b� m筺g gi鑞g nh� bao cao th� trc y.<enter>"
				..name.."<#>:  N鉯 甶! Ta kh玭g s� u! <enter> Ta mu鑞 ngi x﹎ nh藀 v祇 t� ch鴆 s竧 th� L﹎ Uy猲 Nhai. N╩ x璦 Nh筩 Nguy猲 So竔 b� h筰 c� li猲 quan n b鋘 h�, ta  thay ngi 甶襲 tra ch髏 輙. H穣 n Dng Ch﹗ t譵 H鏽 H鏽.<enter>"
				..name.."<#>:  Ta n  l祄 sao li猲 l筩 v韎 y?<enter> Ngi t� b竜 danh l� 頲. ng li猲 l筩 v韎 ta. Ta ch� tin ngi.<enter>",
				1,"K誸 th骳 i tho筰/Uworld1052_zfz3")
			else 
				Talk(1,"Uworld1000_zfz6","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end			
		elseif (( Uworld1051 == 170 ) or ( Uworld1051 == 180 )) then
			if ( GetLevel() >= 30 ) and ( GetLevel() <  40 ) then 
				nt_setTask(1051,180)
				Describe(name.."<#>:  Ta  甧m B秓 th筩h v�.<enter>"
				..DescLink_AoYunZong.."<#>:     в ta xem......Зy qu� nhi猲 l� Kho竛g th筩h thu閏 t輓h, 頲 l緈. L莕 nay ta xem M� Dung B蕋 Ky kh玭g th� l祄 ng� 頲. g ta ch� c莕 1 vi猲, vi猲 c遪 l筰 ngi gi�. Ngi 甧m 竜 gi竝 thu閏 t輓h 萵, b秓 th筩h t� l� v� Kho竛g th筩h thu閏 t輓h � ",
				1,"K誸 th骳 i tho筰/Uworld1051_zfz5")
			else 
				Talk(1,"Uworld1000_zfz6","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end		
		elseif ( Uworld1051 == 80 ) or ( Uworld1051 == 90 ) and ( Uworld1011 == 20 ) then --增加了判断狼数量已够的变量Uworld1011
			if ( GetLevel() >= 30 ) and ( GetLevel() <  40 ) then 
				nt_setTask(1051,90)
				Describe(DescLink_AoYunZong.."<#>:  Ti猽 di謙 s鉯 r錳? T鑤! H穣 甧m xng s鉯 n Tng Dng t譵 Cung A Ng璾, h緉 l� th� s╪ n鎖 ti課g � Ph鬰 Ng璾 S琻, l蕐 xng s鉯 b祇 ch� dc t鰑 s� tr� 頲 b謓h c馻 Ng� L穙 th竔.<enter>",1,"K誸 th骳 i tho筰/Uworld1051_zfz4")
			else 
				Talk(1,"Uworld1000_zfz6","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end
		elseif ( Uworld1051 == 60 ) or ( Uworld1051 == 70 ) then
			if ( GetLevel() >= 30 ) and ( GetLevel() <  40 ) then
				nt_setTask(1051,70)
				Describe(DescLink_AoYunZong.."<#>:  馻? Sao l筰 quay l筰?.<enter>"
				..name.."<#>:  Ta  甶 t譵 H� Lan Chi, c� ta b秓 ta n g苝 Ng� L穙 th竔. Vi猲 ng鋍 c� th� th蕋 l筩 � . Nh璶g l骳 ta qua Ng� L穙 th竔 m綾 b謓h l� kh玭g n鉯 頲.<enter>B謓h l�? C� chuy謓 tr飊g h頿 th� sao, v鮝 ng l骳 ngi qua h醝 tung t輈h c馻 vi猲  l筰 m� "
				..name.."<#>:  Ch糿g l� trong  c遪 c� b� m藅 g�? <enter>Ng筼 V﹏ T玭g:......Ta kh玭g gi蕌 ngi n鱝. M� Dung B蕋 Ky  s韒 ch� t筼 m閠 thanh Ch駓 th�, nh璶g 玭g ta c� gi蕌 chuy謓 n祔, ta nghi ng�  l� hung kh� th輈h s竧 Nhac Phi.<enter>"
				..name.."<#>:  C竔 g�!<enter> Cho n猲 ch髇g ta n猲 t譵 B秓 th筩h thu閏 t輓h, sau  c� th� b総 M� Dung B蕋 Ky n鉯 ra s� th藅. B謓h c馻 Ng� L穙 th竔 n r蕋 l� tr飊g h頿, ph輆 sau ch綾 c� m閠 b祅 tay mu鑞 che y t蕋 c�.<enter>"
				..name.."<#>:  V藋 ta ph秈 l祄 sao? <enter>Mau t譵 thu鑓 gi秈, n誹 kh玭g m鋓 chuy謓 s� thay i. L猲 Ph鬰 Ng璾 S琻 ng nh 50 con S鉯 xanh, l蕐 xng s鉯 v�, ta s� c� c竎h.<enter>",
				1,"K誸 th骳 i tho筰/Uworld1051_zfz3")
			else 
				Talk(1,"Uworld1000_zfz6","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end
		elseif ( Uworld1050 == 130 ) or ( Uworld1050 == 140 ) then
			if ( GetLevel() >= 20 ) and ( GetLevel() <  30 ) then
				nt_setTask(1050,140)
				Describe(name.."<#>:  B筺  nh b筰 t猲 s竧 th� , nh璶g khi h緉 s緋 qua i l筰 n鉯 m譶h kh玭g ph秈 l� k� ch� m璾 s竧 h筰 Nh筩 Nguy猲 So竔.<enter>"
				..DescLink_AoYunZong.."<#>:  Xem ra v蕁  ph鴆 t筽 h琻 b筺 tng r蕋 nhi襲.<enter>",
				1,"K誸 th骳 i tho筰/Uworld1050_zfz4")	
			else
				Talk(1,"Uworld1000_zfz6","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end							
		elseif ( Uworld1050 == 60 ) or ( Uworld1050 == 70 ) then
			if ( GetLevel() >= 20 ) and ( GetLevel() <  30 ) then
				nt_setTask(1050,70)
				Describe(name.."<#>:  莥!  L骳 ta n Si T╪g  c飊g е t� Thi猲 Long t� xu鑞g n骾 h祅h s�.<enter>"
				..DescLink_AoYunZong.."<#>:  Ta ph秈 甶 t譵 玭g ta m韎 頲.<enter>"
				..name.."<#>:  L� ai?<enter> M閠 ngi 萵 c� th� ngo筰, ta v鑞 kh玭g mu鑞 l祄 phi襫 ngi .<enter>"
				..name.."<#>:  L� ai?<enter> L� Ti詎 u b筺 c馻 ta. Ngi 甶 Hoa S琻 ph竔 t譵 玭g ta 甶, 玭g ta 萵 c� �   10 n╩ r錳, n╩ x璦 y t鮪g nh綾 n Thi猲 Ho祅g Long Kh�.<enter>",
				1,"K誸 th骳 i tho筰/Uworld1050_zfz3")	
			else
				Talk(1,"Uworld1000_zfz6","Khi l祄 nhi謒 v� g苝 v蕁  g�, c� th� 蕁 ph輒 <color=red>F12<color>  xem nh藅 tr譶h. Trong  ch� ghi l筰 c竎 bc m� b筺  th鵦 hi謓 qua!")
			end
		elseif ( GetLevel() >= 20)  then
			Say("Ngi c� mu鑞 g鉷 m閠 ph莕 s鴆 cho V� l﹎? Ta c� nhi襲 nhi謒 v� giao cho ngi.",3,"Ta mu鑞 l祄 m閠 v礽 nhi謒 v� Ch輓h tuy課./Uworld1000_zfz5","Ta mu鑞 l祄 m閠 v礽 nhi謒 v� ph� tuy課/Uworld1000_zfz6","Ta m謙 m鈏 r錳! ng t譵 ta n鱝!/Uworld1000_no1")
		else
			Talk(1,"","T譵 ta u鑞g ru �? Л頲 , ch� n祇 kh玭g hi觰 nh蕁 <color=red>F12<color> xem.")
		end
	end
end

function Uworld1000_zfz1()
	AddOwnExp(1000)
	nt_setTask(1000,320) --环节16end
	Msg2Player("Ng筼 V﹏ T玭g b秓 b筺 v祇 th祅h ngh� ng琲, xong r錳 n t譵 玭g ta.")	
end

function Uworld1000_zfz2()
	AddOwnExp(1000)
	nt_setTask(1000,340) --环节17end 
	Msg2Player("Ng筼 V﹏ T玭g b秓 b筺 甶 t譵 V� L﹎ Truy襫 Nh﹏.")	
	seteducationnpcpos()
end

function Uworld1000_zfz3()
	AddItem(6,1,131,1,0,0,0)  --增加龙五的包袱
	nt_setTask(183,10)
	AddOwnExp(20000)
	nt_setTask(1000,440) --环节22end
	Msg2Player("B筺 nh薾 頲 1 t骾 th�, Ng筼 V﹏ T玭g b秓 b筺 mau 甶 t譵 ngi c莕 t譵.")	
end

function Uworld1000_zfz4()
	AddItem(6,1,131,1,0,0,0)  --增加龙五的包袱
	nt_setTask(183,10)
	Msg2Player("B筺 nh薾 頲 1 t骾 th�, Ng筼 V﹏ T玭g b秓 b筺 mau 甶 t譵 ngi c莕 t譵.")	
end

function Uworld1000_zfz5() --正派分支的任务选择脚本
	Uworld1000 = nt_getTask(1000)
	Uworld1001 = nt_getTask(1001)
	if ( Uworld1001 < 10 ) and ( Uworld1000 == 0 ) then 
		Talk(1,"","Ngi h穣 甶 c竎 T﹏ Th� Th玭 t譵 Long Ng�. Nh� gi� k� th� c馻 h緉! N誹 m蕋 th� ti課 d蒼 th� s� kh玭g ai tin ngi u!")
		Msg2Player("Ng筼 V﹏ T玭g b秓 b筺 v祇 T﹏ Th� Th玭 t譵 Long Ng�, Y s� giao v礽 nhi謒 v� cho b筺.")		
	elseif ( Uworld1000 ~= 0 ) and ( Uworld1000 ~= 1000 ) then
		Talk(1,"","Ngi c遪 ph秈 l祄 nhi謒 v� S� nh藀, Sau  Long Ng� s� giao nhi謒 v� kh竎 cho ngi.")
	elseif ( Uworld1001 ~= 0 ) then
		Talk(1,"","N祔 b籲g h鱱, ch糿g ph秈 ngi 產ng l祄 nhi謒 v� Ch輓h tuy課 Ch輓h ph竔  sao? Kh玭g ph秈 tr猽 gh裲 ta ch�! Ta l� ngi th藅 th�, ng g箃 ta! Th藅 l�......")
	else
		Talk(1,"","Nhi謒 v� Ch輓h tuy課 l� sau khi b筺 t n c蕄 nh蕋 nh m韎 c� th� ti誴 nh薾. Ch� c莕 ng c蕄 nh﹏ v藅 tr猲 20 l� c� th� ti誴 nh薾. N誹 ho祅 th祅h......s� c� gi秈 thng h琻 mong i.")
	end
end

function Uworld1000_zfz6()
	Uworld1050 = nt_getTask(1050)
	Uworld1051 = nt_getTask(1051)
	Uworld1052 = nt_getTask(1052)
	Uworld1053 = nt_getTask(1053)
	Describe(DescLink_AoYunZong.."<#>:  giang h� d藋 s鉵g, th� l鵦 B筩h o ng祔 c祅g 輙, kh玭g c遪 o ngh躠 giang h�,  n l骳 ta v� ngi  ra s鴆 r錳.",6,
	"Ta mu鑞 t譵 hi觰 c竎h l祄 nhi謒 v� Ph� tuy課/Uworld1000_zfz7" ,
	"Ta mu鑞 l祄 nhi謒 v� t� c蕄 20 n 29/Uworld1050_zfz1",
	"Ta mu鑞 l祄 nhi謒 v� c蕄 30 n 39/Uworld1051_zfz1",
	"Ta mu鑞 l祄 nhi謒 v� c蕄 40 n 49/Uworld1052_zfz1",
	"Ta mu鑞 l祄 nhi謒 v� c蕄 50 n 59/Uworld1053_zfz1",
	"Hay l� sau n祔 h穣 l祄!/no")
end

function Uworld1000_zfz7()
	Describe(DescLink_AoYunZong.."<#>:  Nhi謒 v� Ph� tuy課 tr猲 c� b秐 l� nhi謒 v� Ch輓h tuy課, khi t n ng c蕄 nh蕋 nh m韎 c� th� ti誴 nh薾. V� d� l骳 ng c蕄 b筺 l� 32, b筺 ph秈 ti誴 nh薾 nhi謒 v� Ch輓h tuy課 c蕄 30 trc, sau  m韎 c� th� ti誴 nh薾 nhi謒 v� ph� tuy課.Trc khi",1,"K誸 th骳 i tho筰/no")
end

function Uworld1050_zfz1()
	Uworld1050 = nt_getTask(1050) --正派20-30级之间的支线任务变量
	Uworld1001 = nt_getTask(1001) --正派主线任务变量
	local name = GetName()  
	if ( Uworld1001 >= 20 ) and ( GetLevel() >= 20 ) and ( GetLevel() <  30 ) and (( Uworld1050 == 0 ) or ( Uworld1050 == 10 )) then
		nt_setTask(1050,10)
		Describe(DescLink_AoYunZong.."<#>:  G莕 y giang h� xu蕋 hi謓 tin t鴆 v� Thi猲 Ho祅g Long Kh�, ch� bi誸  l� b� B秓 gi竝. Ngi m芻 b� gi竝 n祔 s� c� uy l鵦 t鑙 thng. C� ngi b� ra m閠 s� ti襫 l韓  ch髇g ta 甶襲 tra lai l辌h c馻 Thi猲 Ho祅g Long Kh�.<enter>"
		..name.."<#>:  Ьt ti襫 l緈 kh玭g? <enter>L� m閠 c竔 gi� m� ngi kh玭g th� ng�?<enter>"
		..name.."<#>:  Ch�  t譵 tung t輈h c馻 b� 竜 gi竝? <enter> C� ngi nghi ng� y l� tin gi�, ngi h穣 甶 甶襲 tra, ta c騨g? Mu鑞 bi誸 b� gi竝 n祔 nh� th� n祇.<enter>"
		..name.."<#>:  g c� manh m鑙 n祇 kh玭g? <enter> дn Thi猲 Long t� t譵 Si T╪g. Tin n祔 c� kh� n╪g 頲 truy襫 t� V﹏ Nam.<enter>"
		..name.."<#>:  Hi觰 r錳.<enter>",1,"K誸 th骳 i tho筰/Uworld1050_zfz2")
	elseif ( GetLevel() < 20 ) then
		Talk(1,"","Xin l鏸! Ъng c蕄 c馻 ngi ch璦 t y猽 c莡 c馻 nhi謒 v�, i n c蕄 20, sau khi ti誴 nh薾 nhi謒 v� Ch輓h tuy課 tng 鴑g m韎 n t譵 ta.")
	elseif ( GetLevel() >= 30 ) then
		Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� y猽 c莡 c馻 nhi謒 v�, kh玭g th� ti誴 nh薾 nhi謒 v�.")
	elseif ( Uworld1001 < 20 ) then
		Talk(1,"","Xin l鏸! B筺 ch璦 l祄 nhi謒 v� Ch輓h tuy課 Ch輓h ph竔 tng 鴑g v韎 ng c蕄, h穣 n <color=red>Чi L�<color> t譵 M筩 S莡.")
	else
		Talk(1,"","L祄 1 s竧 th�, trc khi h祅h ng c莕 ph秈 suy t輓h cho chu o! Kh玭g ph秈 ai tr猲 giang h� c騨g tr� th祅h s竧 th� n鎖 ti課g")
	end
end

function Uworld1051_zfz1()
	Uworld1051 = nt_getTask(1051) --正派30-40级之间的支线任务变量
	Uworld1001 = nt_getTask(1001) --正派主线任务变量
	local name = GetName()  
	if ( Uworld1001 >= 70 ) and ( GetLevel() >= 30 ) and ( GetLevel() <  40 ) and (( Uworld1051 == 0 ) or ( Uworld1051 == 10 )) then
		nt_setTask(1051,10)
		Describe(DescLink_AoYunZong.."<#>:  M� Dung B蕋 Ky 產ng � L﹎ An c 1 b� B秓 gi竝 cho Ho祅g thng, 玭g ta c莕 1 vi猲 kho竛g th筩h thu閏 t輓h 萵 h� Kim, b筺 甶 t譵 gi髉 玭g ta.<enter>"
		..name.."<#>:  M鉵   � u? <enter> дn Th祅h Й t譵 H� Lan Chi, c� ta t鮪g l�  t� c馻 M� Dung B蕋 Ky, c� ta c� gi� hai vi猲 B秓 th筩h n祔.<enter>",
		1,"K誸 th骳 i tho筰/Uworld1051_zfz2")
	elseif ( GetLevel() < 30 ) then
		Talk(1,"","Xin l鏸! Ъng c蕄 c馻 ngi ch璦 t y猽 c莡 c馻 nhi謒 v�, i n c蕄 30, sau khi ti誴 nh薾 nhi謒 v� Ch輓h tuy課 tng 鴑g m韎 n t譵 ta.")
	elseif ( GetLevel() >= 40 ) then
		Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� y猽 c莡 c馻 nhi謒 v�, kh玭g th� ti誴 nh薾 nhi謒 v�.")
	elseif ( Uworld1001 < 70 ) then
		Talk(1,"","Xin l鏸! B筺 ch璦 l祄 nhi謒 v� Ch輓h tuy課 Ch輓h ph竔 tng 鴑g v韎 ng c蕄, h穣 n <color=red>Чi L�<color> t譵 M筩 S莡.")
	else
		Talk(1,"","L祄 1 s竧 th�, trc khi h祅h ng c莕 ph秈 suy t輓h cho chu o! Kh玭g ph秈 ai tr猲 giang h� c騨g tr� th祅h s竧 th� n鎖 ti課g")
	end
end

function Uworld1052_zfz1()
	Uworld1052 = nt_getTask(1052) --正派40-50级之间的支线任务变量
	Uworld1001 = nt_getTask(1001) --正派主线任务变量
	local name = GetName()  
	if ( Uworld1001 >= 140 ) and ( GetLevel() >= 40 ) and ( GetLevel() <  50 ) and (( Uworld1052 == 0 ) or ( Uworld1052 == 10 )) then
		nt_setTask(1052,10)
		Describe(DescLink_AoYunZong.."<#>:  Ta b玭 ba giang h�  l﹗, c� l阨 mu鑞 n鉯 v韎 ngi.<enter>"
		..name.."<#>:  L� th� n祇?<enter>Ng筼 V﹏ T玭g: <color=red>D鬾g ki誱 d鬾g nh穘, nh nhanh th緉g g鋘.<color><enter>"
		..name.."<#>:  Ngh躠 l� sao? <enter> L骳 i ch quan s竧 l� quan tr鋘g nh蕋. Ch� c� quan s竧 m韎 ph竧 hi謓 頲 甶觤 y誹 c馻 i th�, t譵 ra c竎h nh b筰. Зy g鋓 l� 'D鬾g ki誱 d鬾g nh穘'. M閠 khi ra tay t鑓  ph秈 mau  c� th� che y 甶觤 y誹 c馻 m譶h, kh玭g cho ch c� c� h閕 ph秐 c玭g. с g鋓 l� 'nh nhanh th緉g g鋘'."
		..name.."<#>:  Nh鱪g 甶襲  r蕋 c� 輈h v韎 ngi.<enter> Ch� nghe th玦 th� kh玭g th� th祅h cao th� 頲, ngi h穣 n t� v� trng nh m閠 tr薾 pk,  c秏 nh薾 th鵦 t�.<enter>",
		1,"K誸 th骳 i tho筰/Uworld1052_zfz2")
	elseif ( GetLevel() < 40 ) then
		Talk(1,"","Xin l鏸! Ъng c蕄 c馻 ngi ch璦 t y猽 c莡 c馻 nhi謒 v�, i n c蕄 40, sau khi ti誴 nh薾 nhi謒 v� Ch輓h tuy課 tng 鴑g m韎 n t譵 ta.")
	elseif ( GetLevel() >= 50 ) then
		Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� y猽 c莡 c馻 nhi謒 v�, kh玭g th� ti誴 nh薾 nhi謒 v�.")
	elseif ( Uworld1001 < 140 ) then
		Talk(1,"","Xin l鏸! B筺 ch璦 l祄 nhi謒 v� Ch輓h tuy課 Ch輓h ph竔 tng 鴑g v韎 ng c蕄, h穣 n <color=red>Чi L�<color> t譵 M筩 S莡.")
	else
		Talk(1,"","L祄 1 s竧 th�, trc khi h祅h ng c莕 ph秈 suy t輓h cho chu o! Kh玭g ph秈 ai tr猲 giang h� c騨g tr� th祅h s竧 th� n鎖 ti課g")
	end
end

function Uworld1053_zfz1()
	Uworld1053 = nt_getTask(1053) --正派50-60级之间的支线任务变量
	Uworld1001 = nt_getTask(1001) --正派主线任务变量
	local name = GetName()  
	if ( Uworld1001 >= 210 ) and ( GetLevel() >= 50 ) and ( GetLevel() <  60 ) and ( Uworld1053 == 0 )  then
		if ( Uworld1052 == 1000 ) then
			Describe(DescLink_AoYunZong.."<#>:   t譵 H鏽 H鏽 甶, kh玭g c� g� ng n t譵 ta, tai m総 c馻 L﹎ Uy猲 Nhai � kh緋 n琲.",1,"K誸 th骳 i tho筰/no")
		else
			Describe(DescLink_AoYunZong.."<#>:  дn t譵 H鏽 H鏽 b猲 ngo礽 t� v� trng t筰 Dng Ch﹗, c� ta s� cho ngi bi誸 n猲 l祄 th� n祇.<enter>",1,"K誸 th骳 i tho筰/no")
		end
	elseif ( GetLevel() < 50 ) then
		Talk(1,"","Xin l鏸! Ъng c蕄 c馻 ngi ch璦 t y猽 c莡 c馻 nhi謒 v�, i n c蕄 50, sau khi ti誴 nh薾 nhi謒 v� Ch輓h tuy課 tng 鴑g m韎 n t譵 ta.")
	elseif ( GetLevel() >= 60 ) then
		Talk(1,"","Xin l鏸! Ъng c蕄 c馻 b筺 vt qu� y猽 c莡 c馻 nhi謒 v�, kh玭g th� ti誴 nh薾 nhi謒 v�.")
	elseif ( Uworld1001 < 210 ) then
		Talk(1,"","Xin l鏸! B筺 ch璦 l祄 nhi謒 v� Ch輓h tuy課 Ch輓h ph竔 tng 鴑g v韎 ng c蕄, h穣 n <color=red>Чi L�<color> t譵 M筩 S莡.")
	else
		Talk(1,"","L祄 1 s竧 th�, trc khi h祅h ng c莕 ph秈 suy t輓h cho chu o! Kh玭g ph秈 ai tr猲 giang h� c騨g tr� th祅h s竧 th� n鎖 ti課g")
	end
end

function Uworld1050_zfz2()
	AddOwnExp(5000)
	nt_setTask(1050,20)
	Msg2Player("Ng筼 V﹏ T玭g b秓 b筺 n Thi猲 Long t� � Чi L� t譵 Si T╪g h醝 th╩ tin t鴆.")
end

function Uworld1050_zfz3()
	AddOwnExp(5000)
	nt_setTask(1050,80)
	Msg2Player("Ng筼 V﹏ T玭g b秓 b筺 甶 Hoa S琻 ph竔 t譵 Ti詎 u h醝 th╩ tin t鴆.")
end

function Uworld1050_zfz4()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
	ex_add_zp_level20();
end

function Uworld1051_zfz2()
	AddOwnExp(15000)
	nt_setTask(1051,20)
	Msg2Player("M� Dung B蕋 Ky c莕 1 vi猲 B秓 th筩h thu閏 t輓h 萵, Ng筼 V﹏ T玭g b秓 b筺 甶 Th祅h Й t譵 H� Lan Chi.")
end

function Uworld1051_zfz3()
	Uworld1011 = nt_getTask(1011) --正派支线杀怪变量
	AddOwnExp(15000)
	nt_setTask(1051,80)
	nt_setTask(1011,10) --10为启动参数，传给程序实现判断杀死怪物的数量
	AddPlayerEvent(1)
	Msg2Player("Ng筼 V﹏ T玭g cho b筺 bi誸 m閠 b� m藅, 玭g nghi ng� Ng� L穙 th竔 b� k� th� h� c. g ta b秓 b筺 l猲 Ph鬰 Ng璾 S琻 nh 50 con S鉯 xanh l蕐 xng v� b祇 ch� thu鑓.")
end

function Uworld1051_zfz4()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
end

function Uworld1051_zfz5()
	AddSkillState( 509, 1, 0, 180);
	branchprize()	
	ex_add_zp_level30();
end

function Uworld1052_zfz2()
	Uworld1011 = nt_getTask(1011) --正派支线杀怪变量，设置为10，传参数给程序判断，比武场pk的判断
	AddOwnExp(30000)
	nt_setTask(1011,10)
	nt_setTask(1052,20)
	Msg2Player("Ng筼 V﹏ T玭g b秓 b筺 n t� v� trng nh 1 tr薾, b筺 c秏 th蕐 th藅 s� nguy hi觤.")
end

function Uworld1052_zfz3()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
end

function Uworld1052_zfz4()
	AddOwnExp(30000)
	nt_setTask(1052,100)
	Msg2Player("Ng筼 V﹏ T玭g cho b筺 bi誸 Du Sng T﹏ c� th� 產ng � Th祅h Й.")
end

function Uworld1052_zfz5()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
	ex_add_zp_level40();
end

function Uworld1053_zfz3()
	AddSkillState( 509, 1, 0, 180);
	branchprize()
	ex_add_zp_level50();
end

function allprize_zhengpai()
	Uworld196 = nt_getTask(196) --正派全奖励
	local i=random(1,1200)
	if ( i >= 1 ) and ( i <= 99) then
		AddEventItem(490)
	elseif ( i >= 100 ) and ( i <= 199) then
		AddEventItem(491)
	elseif ( i >= 200 ) and ( i <= 299) then
		AddEventItem(492)
	elseif ( i >= 300 ) and ( i <= 399) then
		AddEventItem(493)
	elseif ( i >= 400 ) and ( i <= 499) then
		AddEventItem(494)
	elseif ( i >= 500 ) and ( i <= 599) then
		AddEventItem(495)
	elseif ( i >= 600 ) and ( i <= 699) then
		AddEventItem(496)
	elseif ( i >= 700 ) and ( i <= 799) then
		AddEventItem(497)
	elseif ( i >= 800 ) and ( i <= 899) then
		AddEventItem(498)
	elseif ( i >= 900 ) and ( i <= 999) then
		AddEventItem(499)
	elseif ( i >= 1000 ) and ( i <= 1099) then
		AddEventItem(500)
	elseif ( i >= 1100 ) and ( i <= 1200) then
		AddEventItem(501)
	end
	Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 1 m秐h T祅g B秓 .")
	if ( Uworld1050 == 1000 ) and ( GetBit(GetTask(196),1) ~= 1 ) then
		AddGoldItem(0,179)
		SetTask(196,SetBit(GetTask(196),1,1))
	Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 1  Kim Phong Tr筩 Li猲 Quang")
	elseif ( Uworld1051 == 1000 )  and ( GetBit(GetTask(196),2) ~= 1) then
		AddGoldItem(0,180)
		SetTask(196,SetBit(GetTask(196),2,1))
	Msg2Player("Ch骳 m鮪g b筺 t 頲 1  Kim Phong C玭g C萵 Tam Th竛.")
	elseif ( Uworld1052 == 1000 ) and ( GetBit(GetTask(196),3) ~= 1 ) then
		AddGoldItem(0,183)
		SetTask(196,SetBit(GetTask(196),3,1))
	Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 1  Kim Phong Lan ёnh Ng鋍")
	elseif ( Uworld1053 == 1000 ) and ( GetBit(GetTask(196),4) ~= 1 ) then
		AddGoldItem(0,185)
		SetTask(196,SetBit(GetTask(196),4,1))
		Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 1 Kim Phong уng Tc Xu﹏ Th﹎.")
	end	
	Msg2Player("B筺  ho祅 th祅h nhi謒 v� c馻 ng c蕄 n祔.")
end

function Uworld1000_finishzhengpai()
	Uworld1000 = nt_getTask(1000)
	nt_setTask(1000,1000)
	Msg2Player("B筺  ho祅 th祅h nhi謒 v� s� nh藀.")
end

function no()

end

function Uworld1000_no1()
	Talk(1,"","Ng筼 V﹏ T玭g: Giang h� kh玭g ng鮪g d藋 s鉵g, ngi ph秈 c萵 th薾. Sau n祔 c� r秐h quay l筰 y, ta c� v礽 nhi謒 v� giao cho ngi.")
end