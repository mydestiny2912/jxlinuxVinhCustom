-- 龙门镇　路人　孙家嫂子
-- by：Dan_Deng(2003-09-16)

Include("\\script\\global\\repute_head.lua")

function main()
	Uworld41 = GetByte(GetTask(41),1)
	if (GetLevel() >= 40) and (GetReputeLevel(GetRepute()) >= 5) then		-- 符合任务条件
		if (Uworld41 == 0) or (Uworld41 == 5) then			-- 任务启动
			Talk(4,""," (Kh鉩 than) ","V� i t萿 n祔, c� chuy謓 g� m� 產u bu錸 th�.? "," (Kh鉩 than) ","... ")
			SetTask(41,5)
		elseif (Uworld41 == 10) or (Uworld41 == 30) then	-- 任务进行中
			Talk(1,"","Чi hi謕 mu鑞 gi髉 ch髇g ta mang Ti觰 Quy猲 v� ph秈 kh玭g? V� c飊g c秏 t�! ")
		elseif (Uworld41 == 100) then					-- 已经救出小娟，任务未交
			Talk(1,"","Ti觰 Quy猲! Con  tr� v�! Th藅 kh� cho con qu�. Con mau 甶 g苝 cha  ngi kh醝 lo l緉g.")
		else		-- 任务已完成
			Talk(1,""," Th藅 c秏 t� i hi謕! Ta v� m蕐 ngi kh竎 s� t苙g i hi謕 m閠 phng thu鑓 trng sinh.")
		end
	else
		Talk(1,"","Уn 玭g nh� n祔, t� s竛g n t鑙 c� m� tng vi詎 v玭g, c竔 g� l� ch� kh�, c竔 g� l� anh h飊g? T遖n l�  b� 甶, kh玭g lo cho cu閏 s鑞g th鵦 t筰!")
	end
end;
