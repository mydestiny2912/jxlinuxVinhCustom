--description: 峨嵋派妙尘
--author: yuanlan	
--date: 2003/3/4
-- Update: Dan_Deng(2003-08-12)

Include("\\script\\global\\repute_head.lua")

function main()
	UTask_em = GetTask(1);
	Uworld36 = GetByte(GetTask(36),1)
	if (Uworld36 == 70) then		-- 入门任务进行中
		if (HaveItem(17) == 0) then		--拿到白玉如意之前
			Talk(1,"","Mu閕 ch璦 l蕐 頲 <color=Red>B筩h Ng鋍 Nh� �<color>!")
		else									--拿到白玉如意之后
			Uworld36_prise()
		end
--	elseif (UTask_em < 6) then 							--尚未完成前三关
--		Talk(1,"","妙尘：要想加入本派，必须先通过茶琴书的考验，你都做到了吗？")
--	elseif (UTask_em == 6) then 							--尚未完成前三关
--		Talk(1,"","妙尘：你已通过茶琴书的考验，接下来你去找<color=Red>谢云萝<color>师妹吧，她就在半山腰的<color=Red>钻天坡入口<color>处。")
	elseif (GetFaction() == "emei") then   				--已经入门，尚未出师
		Talk(1,"","S� mu閕 c萵 th薾! To祅 Thi猲 Ph� v� c飊g nguy hi觤!")
	elseif (UTask_em == 70) then   						--已经出师
		Talk(1,"","S� mu閕, ph秈 h� s琻 sao? T� mu閕 ta s� r蕋 nh� mu閕!")
	else
		Talk(1,"","To祅 Thi猲 Ph� l� n琲 nguy hi觤, xin th� ch� ng m筼 hi觤!")
	end
end;

function Uworld36_prise()
	DelItem(17)
	Uworld36 = SetByte(GetTask(36),1,127)
	i = ReturnRepute(30,19,3)		-- 缺省声望，最大无损耗等级，每级递减
	SetTask(36,Uworld36)
	AddRepute(i)		-- 加声望
	AddNote("Лa cho Di謚 Tr莕 B筩h Ng鋍 nh� �, ho祅 th祅h nhi謒 v�, tr� th祅h K� Danh  t� c馻 Nga Mi ph竔 ")
	Msg2Player("Лa cho Di謚 Tr莕 B筩h Ng鋍 nh� �, ho祅 th祅h nhi謒 v�, tr� th祅h K� Danh  t� c馻 Nga Mi ph竔, thanh th� giang h� 頲 t╪g "..i.."甶觤.")
	Talk(1,"","Ch骳 m鮪g mu閕 nh薾 頲 B筩h Ng鋍 Nh� �, thu薾 l頸 qua 頲 4 秈 th� th竎h c馻 t� mu閕 ta. T� nay mu閕  l�  t� c馻 b鎛 ph竔! V� sau hoan ngh猲h mu閕 n Nga Mi du ngo筺!")
end
