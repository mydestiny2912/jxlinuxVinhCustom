--两湖区 南岳镇 路人2田太婆对话
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel)
if allbrother_0801_CheckIsDialog(201) == 1 then
		allbrother_0801_FindNpcTaskDialog(201)
		return 0;
	end
	if ( GetTask(1256) == 1 ) then
		 SetTaskTemp(111,GetTaskTemp(111)+1)

		 if ( GetTaskTemp(111) > 3 ) then
		 	Talk(1,"","Nghe n鉯 c� m閠 v� s� th竔 kh玭g bi誸 t� mi誹 n祇 n, ph竝 l鵦 v� bi猲 ngi 甶 h醝 th� xem sao.")
		 	SetTask(1256, 2);
		 else
			 Talk(1,"","Kh鬹h魠卥h鬹h魠, ch綾 ta kh玭g 頲 r錳, kh玭g bi誸 b� sao n鱝 s竛g th鴆 d藋 c秏 th蕐 u nh鴆 d� d閕. Kh鬹h�, kh玭g bi誸 b謓h n祔 l﹜ kh玭g n鱝, ngi mau r阨 kh醝 甶!")	 
		 end
		 return
	elseif ( GetTask(1256) == 2 ) then
		Talk(1,"","Nghe n鉯 c� m閠 v� s� th竔 kh玭g bi誸 t� mi誹 n祇 n, ph竝 l鵦 v� bi猲 ngi 甶 h醝 th� xem sao.")
		return
	end

Say("Con ta c遪 s鑞g c騨g l韓 gi鑞g nh� ngi, r錳 ch� ng ti誧 l骳 n� 15 tu鎖  b� b謓h ch誸  m閠 m譶h l穙 s鑞g c� c th� n祔",0)

end;

