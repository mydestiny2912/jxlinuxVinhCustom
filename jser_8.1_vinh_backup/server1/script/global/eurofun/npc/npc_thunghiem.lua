IncludeLib("TASKSYS");
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("SETTING")
Include("\\script\\tong\\tong_award_head.lua");
IncludeLib("FILESYS")
Include("\\script\\lib\\common.lua");
Include("\\script\\vng_lib\\files_lib.lua");
Include("\\script\\petsys\\transferexp.lua")
Include("\\script\\petsys\\feed.lua")
Include("\\script\\中原南区\\扬州\\npc\\扬州_铁匠学徒对话.lua")
Include("\\script\\ctc_feature\\top10\\top10.lua")
Include("\\script\\global\\eurofun\\hotro\\trangbihoangkim_caocap.lua")
Include("\\script\\global\\eurofun\\hotro\\nhancankhon.lua")
Include("\\script\\global\\eurofun\\hotro\\trangbihoangkim.lua")

function main()	
dofile("script/global/eurofun/npc/npc_thunghiem.lua")
str = "Ch祇 m鮪g c竎 b筺  tham gia th� gi韎 <color=red>V� L﹎ Truy襫 K�<color> 頲 Edit <color=green>By  Eurofun<color> m鋓 chi ti誸 xin li猲 h� <color=green>https://fb.com/groups/volamquan<color>  nh薾 頲 s� h� tr� khi c莕 thi誸."
AddGlobalCountNews(str, 1)
local bilTbOp = {}
tinsert(bilTbOp, "Nh薾 Tr飊g Sinh 6/TrungSinh")
tinsert(bilTbOp, "X鉧 s筩h gng /DonSachRuong")
tinsert(bilTbOp, "Nh薾 H� M筩h Кn v� Ch﹏ Nguy猲 n﹏g m筩h/nhantrannguyen")
--tinsert(bilTbOp, "Test/nhantrangbitestgame")
tinsert(bilTbOp, "Nh薾 Trang B� Hi誱/nhantrangbihiem")
tinsert(bilTbOp, "L蕐 Trang B� Cao C蕄/TrangBiHoangKimCaoCap")
tinsert(bilTbOp, "Nh薾 Nguy猲 Li謚 Pet/nguyenlieupet")
tinsert(bilTbOp, "L藀 Bang/lapbang")
tinsert(bilTbOp, "Nh薾 Ti襫/NhanTienvsDiem")
tinsert(bilTbOp, "V祇 Hoa S琻/vaohoason")
tinsert(bilTbOp, "V祇 V� H錸/vaovuhon")
tinsert(bilTbOp, "K誸 th骳 i tho筰/no")
Say("Ch鴆 n╪g th� nghi謒 !", getn(bilTbOp), bilTbOp)
end

function nhantrangbihiem()	
local bilTbOp = {}
tinsert(bilTbOp, "Trang B� Hi誱/TrangBiHiem")
tinsert(bilTbOp, "Nh蒼 C祅 Kh玭 C蕄 10/NhanCanKhon")
tinsert(bilTbOp, "Trang B� Ho祅g Kim Thng/TrangBiHoangKim22")
tinsert(bilTbOp, "K誸 th骳 i tho筰/no")
Say("Ch鴆 n╪g th� nghi謒 !", getn(bilTbOp), bilTbOp)
end

function NhanCanKhon()	
local bilTbOp = {}
tinsert(bilTbOp, "Nh蒼 C祅 Kh玭 C蕄 10 Th阨 Gian Tr髇g чc/NhanCanKhon1")
tinsert(bilTbOp, "Nh蒼 C祅 Kh玭 C蕄 10 Th阨 Gian L祄 Cho竛g/NhanCanKhon2")
tinsert(bilTbOp, "Nh蒼 C祅 Kh玭 C蕄 10 Th阨 Gian L祄 Ch薽/NhanCanKhon3")
tinsert(bilTbOp, "K誸 th骳 i tho筰/no")
Say("Ch鴆 n╪g th� nghi謒 !", getn(bilTbOp), bilTbOp)
end
-----------------------------------------------------------------------------------------------------------
function vaohoason()
local player_Faction = GetFaction()
	if (GetLastFactionNumber() == 5) then		-- 本门
		Talk(1,"","T� l﹗ nghe ti課g c竎 c� nng Th髖 Y猲 p nh� ti猲 n�, v� c� nng n祔 cho ╪ m祔 ta 輙 ti襫 u鑞g ru 頲 ch╪g?")
		return
	elseif (GetLastFactionNumber() == 4) then				
		Talk(1,"","Xinh p nh� hoa ti m� h籲g ng祔 c� i di謓 v韎 Thanh Жng C� Ph藅!  Ta kh玭g th輈h c竎 ngi � 甶觤 n祔! ")
		return
	elseif (GetLastFactionNumber() == 2) then
		Talk(1,"","Hai ph竔 ch髇g ta li猲 minh l筰, kh玭g c莕 ph秈 ph﹏ tranh n鱝! Ch糿g ph秈 l� h� s� �?")
		return
	elseif (GetLastFactionNumber() == 3) then
		Talk(1,"","Ta gh衪 nh蕋 l� c竔 b鋘 len l衝 h� c h筰 ngi!  蕐!  Kh玭g ph秈 ta n鉯 ngi! ")
		return
	elseif (GetLastFactionNumber() == 1) then
		Talk(1,"","Dng H� c馻 Thi猲 Vng bang c竎 ngi c遪 k衜 xa b秐 m玭 c馻 ta, Thi猲 Vng qu� nhi猲 ch糿g ra g� h誸! ")
		return
	elseif (GetLastFactionNumber() == 0) then
		Talk(1,"","H遖 thng u tr鋍 sao l筰 n n琲 th﹎ s琻 c飊g c鑓 th� n祔?! ")
		return
	elseif (GetLastFactionNumber() == 8) then
		Talk(1,"","Qu� m玭 l蕐 hi謕 ngh躠 l祄 tr鋘g, nh璶g kh玭g bi誸 Кn T� Nam c� bi誸 h� th裯 hay kh玭g m� c� mu鑞 so t礽 v韎 v� c玭g c馻 ch髇g ta")
		return
	elseif (GetLastFactionNumber() == 9) then
		Talk(1,"","C玭 L玭 ph竔 ph竧 tri觧 th莕 t鑓! T筰 h� r蕋 ngng m�! ")
		return
	elseif (GetLastFactionNumber() == 7) then
		Talk(1,"","Ai l祄 ho祅g  th� c騨g m芻!  Nh璶g c竎 ngi t祅 s竧 sinh linh th� b鎛 c� nng kh玭g b� qua! ")
		return
	elseif (GetLastFactionNumber() == 6) then
		Talk(2,"","Чi hi謕!  ng qua y! ","�! B� ch衪!!! ")
		return
	elseif (GetLastFactionNumber() == 11) then
		Talk(2,"","Чi hi謕!  ng qua y! ","�! B� ch衪!!! ")
		return
	elseif (GetLastFactionNumber() == 10) then
		Talk(2,"","Чi hi謕!  ng qua y! ","�! B� ch衪!!! ")
		return
end
SetFaction("huashan");
SetCamp(3);
SetCurCamp(3);
SetRank(89);
SetSeries(2);
SetLastFactionNumber(10);
AddMagic(1347,20)
AddMagic(1372,20)
AddMagic(1349,20)
AddMagic(1374,20)
AddMagic(1350,20)
AddMagic(1375,20)
AddMagic(1351,20)
AddMagic(1376,20)
AddMagic(1354,20)
AddMagic(1378,20)
AddMagic(1355,20)
AddMagic(1379,20)
AddMagic(1380,20)
AddMagic(1360,20)
AddMagic(1364,20)
AddMagic(1358,30)
AddMagic(1382,20)
AddMagic(1384,20)
AddMagic(1369,20)
AddMagic(1370,20)
end
-----------------------------------------------------------------------------------------------------------
function vaovuhon()
local player_Faction = GetFaction()
	if (GetLastFactionNumber() == 5) then		-- 本门
		Talk(1,"","T� l﹗ nghe ti課g c竎 c� nng Th髖 Y猲 p nh� ti猲 n�, v� c� nng n祔 cho ╪ m祔 ta 輙 ti襫 u鑞g ru 頲 ch╪g?")
		return
	elseif (GetLastFactionNumber() == 4) then				
		Talk(1,"","Xinh p nh� hoa ti m� h籲g ng祔 c� i di謓 v韎 Thanh Жng C� Ph藅!  Ta kh玭g th輈h c竎 ngi � 甶觤 n祔! ")
		return
	elseif (GetLastFactionNumber() == 2) then
		Talk(1,"","Hai ph竔 ch髇g ta li猲 minh l筰, kh玭g c莕 ph秈 ph﹏ tranh n鱝! Ch糿g ph秈 l� h� s� �?")
		return
	elseif (GetLastFactionNumber() == 3) then
		Talk(1,"","Ta gh衪 nh蕋 l� c竔 b鋘 len l衝 h� c h筰 ngi!  蕐!  Kh玭g ph秈 ta n鉯 ngi! ")
		return
	elseif (GetLastFactionNumber() == 1) then
		Talk(1,"","Dng H� c馻 Thi猲 Vng bang c竎 ngi c遪 k衜 xa b秐 m玭 c馻 ta, Thi猲 Vng qu� nhi猲 ch糿g ra g� h誸! ")
		return
	elseif (GetLastFactionNumber() == 0) then
		Talk(1,"","H遖 thng u tr鋍 sao l筰 n n琲 th﹎ s琻 c飊g c鑓 th� n祔?! ")
		return
	elseif (GetLastFactionNumber() == 8) then
		Talk(1,"","Qu� m玭 l蕐 hi謕 ngh躠 l祄 tr鋘g, nh璶g kh玭g bi誸 Кn T� Nam c� bi誸 h� th裯 hay kh玭g m� c� mu鑞 so t礽 v韎 v� c玭g c馻 ch髇g ta")
		return
	elseif (GetLastFactionNumber() == 9) then
		Talk(1,"","C玭 L玭 ph竔 ph竧 tri觧 th莕 t鑓! T筰 h� r蕋 ngng m�! ")
		return
	elseif (GetLastFactionNumber() == 7) then
		Talk(1,"","Ai l祄 ho祅g  th� c騨g m芻!  Nh璶g c竎 ngi t祅 s竧 sinh linh th� b鎛 c� nng kh玭g b� qua! ")
		return
	elseif (GetLastFactionNumber() == 6) then
		Talk(2,"","Чi hi謕!  ng qua y! ","�! B� ch衪!!! ")
		return
	elseif (GetLastFactionNumber() == 10) then
		Talk(2,"","Чi hi謕!  ng qua y! ","�! B� ch衪!!! ")
		return
	elseif (GetLastFactionNumber() == 11) then
		Talk(2,"","Чi hi謕!  ng qua y! ","�! B� ch衪!!! ")
		return
	end
SetFaction("wuhun");
SetCamp(1);
SetCurCamp(1);
SetRank(97);
SetSeries(3);
SetLastFactionNumber(11);
AddMagic(1963,20)
AddMagic(1964,20)
AddMagic(1965,20)
AddMagic(1967,20)
AddMagic(1969,20)
AddMagic(1971,20)
AddMagic(1972,20)
AddMagic(1974,20)
AddMagic(1975,20)
AddMagic(1976,20)
AddMagic(1977,20)
AddMagic(1979,20)
AddMagic(1980,20)
AddMagic(1981,20)
AddMagic(1982,30)
AddMagic(1983,20)
AddMagic(1984,20)
AddMagic(1985,20)
AddMagic(1986,20)
end
--------------------------------------Nh薾 Ch﹏ Nguy猲------------------------------------------------------
function nhantrannguyen()
tbAwardTemplet:GiveAwardByList({{szName="H� M筩h Кn",tbProp={6,1,3203,1,0},nCount=10000,},}, "npctest", 1);
SetTask(4000, GetTask(4000) + 100000)
end
--------------------------------------Nh薾 Trang B� Test Game-----------------------------------------------
function nhantrangbitestgame()
for i=5658,5669 do
AddGoldItem(0,i)
end
--AddGoldItem(0,5991)
--AddGoldItem(0,3962)
--AddGoldItem(0,3997)
--AddGoldItem(0,6480)
--AddGoldItem(0,6480)
--AddGoldItem(0,6762)
--AddItem(0,11,841,1,0,0)
--AddItem(6,1,2219,1,0,0)
--AddItem(0,11,829,1,0,0)
--AddGoldItem(0,6542)
--AddGoldItem(0,6592)
--AddGoldItem(0,6682)
--AddGoldItem(0,6735)
end
--------------------------------------Nguy猲 Li謚 Pet-----------------------------------------------
function nguyenlieupet()
local nTamePoint = PET_GetTamePoint() + 100000
PET_SetTamePoint(nTamePoint)
local nGrownPoint = PET_GetGrownPoint()
PET_SetGrownPoint(nGrownPoint + 20000)
local nUpgradePoint = PET_GetUpgradePoint()
PET_SetUpgradePoint(nUpgradePoint + 20000)
for i=1,100 do
AddItem(6,1,3454,1,0,0)
end
AddItem(6,1,4808,1,0,0)
AddItem(6,1,4808,1,0,0)
for i=1,10 do
AddItem(6,1,3456,1,0,0)
end
AddItem(6,1,4808,1,0,0)
AddItem(6,1,3453,0,0,0)
end
--------------------------------------L藀 Bang-----------------------------------------------
function lapbang()
	if (GetCamp() ~= 4) then
		SetCamp(4);
		SetCurCamp(4);
	end
	if (GetRepute() < 450) then
		AddRepute(450);
	end
	if (GetLeadLevel() < 30) then
		for i = 1, 30 do
			AddLeadExp(250000);
		end
	end
	if (HaveItem(195) < 1) then
		AddItem(4,195,1,0,0,0);
	end
Earn(1000000)
NewWorld(2, 2344, 3488)
end
----------------------------------------------------------------------------------------------------
function NhanTienvsDiem()
local bilTbOp = {}
tinsert(bilTbOp, "Nh薾 Ngay 10000 V筺/Nhan10000Van")
tinsert(bilTbOp, "Nh薾 Ngay 1000 Xu/Nhan1000Xu")
tinsert(bilTbOp, "Kh玭g giao d辌h/no")
Say("Ch鴆 n╪g th� nghi謒 t輓h n╪g server m韎 xin ch祇 qu� nh﹏ s� v� l﹎  n chung vui !", getn(bilTbOp), bilTbOp)
end
------nh薾 ti襫 v筺 -----
function Nhan10000Van()
if GetCash() > 10000000 then
return Say("B筺 nh薾 qu� nhi襲 ti襫 r錳!")
end
Earn(10000000)
Say("Nh薾 th祅h c玭g xin h穣 ki觤 tra !")
end

------nh薾 ti襫 v筺 -----
function Nhan1000Xu()
for i=1,999 do
AddItem(4,417,1,1,1,1)
end
Say("Nh薾 th祅h c玭g xin h穣 ki觤 tra !")
end

----------------------------------------------------------------------------------------------------
function DonSachRuong()
Say(" d鋘!")
	local tbItems = {}
			tbItems = GetRoomItems(0);
			if (getn(tbItems) > 0) then
				for i = 1, getn(tbItems) do
					RemoveItemByIndex(tbItems[i],-1);
				end
			end
end
----------------------------------------------------------------------------------------------------
function TrungSinh()
local nTransLife = ST_GetTransLifeCount();
local nCurLevel = GetLevel()
local nAddLevel = 200 - nCurLevel
if (nTransLife == 0) then
for i = 1, 6 do ST_LevelUp(nAddLevel) ST_DoTransLife() end
		ST_LevelUp(nAddLevel)  
	elseif (nTransLife == 1) then
		for i = 1, 5 do ST_LevelUp(nAddLevel) ST_DoTransLife() end
		ST_LevelUp(nAddLevel); 
	elseif (nTransLife == 2) then
		for i = 1, 4 do ST_LevelUp(nAddLevel) ST_DoTransLife() end
		ST_LevelUp(nAddLevel); 
	elseif (nTransLife == 3) then
		for i = 1, 3 do ST_LevelUp(nAddLevel) ST_DoTransLife() end
		ST_LevelUp(nAddLevel); 
	elseif (nTransLife == 4) then
		for i = 1, 2 do ST_LevelUp(nAddLevel) ST_DoTransLife() end
		ST_LevelUp(nAddLevel);
	elseif (nTransLife == 5) then
		for i = 1, 1 do ST_LevelUp(nAddLevel) ST_DoTransLife() end
		ST_LevelUp(nAddLevel); 
	end
ST_LevelUp(200); 
end
----------------------------------------------------------------------------------------------------
function dotim()	local tab_Content = {
		"V� Kh�/weapon",
		"Y Ph鬰/shirt",
		"жnh M筼/hat",
		"H� Uy觧/glove",
		"Y猽 Цi/belt",
		"H礽 T�/shoe",
		"V藅 ph萴 h� tr�/khoangth",
		"M苩 n�/manat",
		"Trang b� b筩h kim/bachkim",
		"K誸 th骳 i tho筰."
	}
	Say(" Mu鑞 l蕐 th猰 c竔 g� n祇 ? ", getn(tab_Content), tab_Content);
end;

function weapon()
	local tab_Content = {
		"Ki誱/kiem",
		"o/dao",
		"B鎛g/bong",
		"Thng/kick",
		"Ch飝/chuy",
		"Song o/songdao",
		"Phi Ti猽/phitieu",
		"Phi o/phidao",
		"T� Ti詎/tutien",
		"K誸 th骳 i tho筰."
	}
	Say(" Mu鑞 l蕐 th猰 c竔 g� n祇 ? ", getn(tab_Content), tab_Content);
end;


function kiem()
		AddQualityItem(2,0,0,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function dao()
		AddQualityItem(2,0,0,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function bong()
		AddQualityItem(2,0,0,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function kick()
		AddQualityItem(2,0,0,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function chuy()
		AddQualityItem(2,0,0,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function songdao()
		AddQualityItem(2,0,0,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function phitieu()
		AddQualityItem(2,0,1,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function phidao()
		AddQualityItem(2,0,1,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function tutien()
		AddQualityItem(2,0,1,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function shirt()
	local tab_Content = {
		"Th蕋 B秓 C� Sa/aothieulam",
		"Ch﹏ V� Th竛h Y/aovodang",
		"Thi猲 Nh蒼 M藅 Trang/aothiennhan",
		"Gi竛g Sa B祇/sabao",
		"Л阯g Ngh� Gi竝/dng",
		"V筺 L璾 Quy T玭g Y/aocaibang",
		"Tuy襫 Long B祇/longbao",
		"Long Ti猽 Чo Y/daoy",
		"C鰑 V� B筩h H� Trang/hotrang",
		"Tr莔 Hng Sam/huongsam",
		"T輈h L辌h Kim Ph鬾g Gi竝/kimphung",
		"V筺 Ch髇g T� T﹎ Y/tamy",
		"L璾 Ti猲 Qu莕/tienquan",
		"K誸 th骳 i tho筰."
	}
	Say(" Mu鑞 l蕐 th猰 c竔 g� n祇 ? ", getn(tab_Content), tab_Content);
end;


function aothieulam()
		AddQualityItem(2,0,2,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aovodang()
		AddQualityItem(2,0,2,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aothiennhan()
		AddQualityItem(2,0,2,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function sabao()
		AddQualityItem(2,0,2,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,4,0,-1,-1,-1,-1,-1,-1)
end


function dng()
		AddQualityItem(2,0,2,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aocaibang()
		AddQualityItem(2,0,2,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,4,0,-1,-1,-1,-1,-1,-1)
end


function longbao()
		AddQualityItem(2,0,2,6,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,4,0,-1,-1,-1,-1,-1,-1)
end


function daoy()
		AddQualityItem(2,0,2,8,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,4,0,-1,-1,-1,-1,-1,-1)
end


function hotrang()
		AddQualityItem(2,0,2,9,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,4,0,-1,-1,-1,-1,-1,-1)
end


function huongsam()
		AddQualityItem(2,0,2,10,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,4,0,-1,-1,-1,-1,-1,-1)
end


function kimphung()
		AddQualityItem(2,0,2,11,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tamy()
		AddQualityItem(2,0,2,12,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tienquan()
		AddQualityItem(2,0,2,13,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,4,0,-1,-1,-1,-1,-1,-1)
end


function hat()
	local tab_Content = {
		"T� L� M穙/lomao",
		"Ng� L穙 Qu竛/laoquan",
		"Tu La Ph竧 K誸/phatket",
		"Th玭g Thi猲 Ph竧 Qu竛/phatquan",
		"Y觤 Nh藅 Kh玦/nhatkhoi",
		"Tr輈h Tinh Ho祅/tinhhoan",
		"� T祄 M穙/tammao",
		"Quan  Ph竧 Qu竛/quanam",
		" Dng V� C鵦 Qu竛/amduong",
		"Huy襫 T� Di謓 Tr竜/dientrao",
		"Long Huy誸 u Ho祅/longhuyet",
		"Long L﹏ Kh玦/lankhoi",
		"Thanh Tinh Thoa/tinhthoa",
		"Kim Ph鬾g Tri觧 S�/triensi",
		"K誸 th骳 i tho筰."
	}
	Say(" Mu鑞 l蕐 th猰 c竔 g� n祇 ? ", getn(tab_Content), tab_Content);
end;


function lomao()
		AddQualityItem(2,0,7,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function laoquan()
		AddQualityItem(2,0,7,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phatket()
		AddQualityItem(2,0,7,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phatquan()
		AddQualityItem(2,0,7,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,4,0,-1,-1,-1,-1,-1,-1)
end


function nhatkhoi()
		AddQualityItem(2,0,7,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tinhhoan()
		AddQualityItem(2,0,7,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tammao()
		AddQualityItem(2,0,7,6,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,4,0,-1,-1,-1,-1,-1,-1)
end


function quanam()
		AddQualityItem(2,0,7,7,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,4,0,-1,-1,-1,-1,-1,-1)
end


function amduong()
		AddQualityItem(2,0,7,8,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,4,0,-1,-1,-1,-1,-1,-1)
end


function dientrao()
		AddQualityItem(2,0,7,9,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,4,0,-1,-1,-1,-1,-1,-1)
end


function longhuyet()
		AddQualityItem(2,0,7,10,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,4,0,-1,-1,-1,-1,-1,-1)
end


function lankhoi()
		AddQualityItem(2,0,7,11,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tinhthoa()
		AddQualityItem(2,0,7,12,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,4,0,-1,-1,-1,-1,-1,-1)
end


function triensi()
		AddQualityItem(2,0,7,13,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,4,0,-1,-1,-1,-1,-1,-1)
end


function glove()
	local tab_Content = {
		"Long Ph鬾g Huy誸 Ng鋍 Tr筩/ngoctrac",
		"Thi猲 T祄 H� Uy觧/houyen",
		"K誸 th骳 i tho筰."
	}
	Say(" Mu鑞 l蕐 th猰 c竔 g� n祇 ? ", getn(tab_Content), tab_Content);
end;


function ngoctrac()
		AddQualityItem(2,0,8,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function houyen()
		AddQualityItem(2,0,8,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function belt()
	local tab_Content = {
		"Thi猲 T祄 Y猽 Цi/thientamyeu",
		"B筩h Kim Y猽 Цi/bachkim",
		"K誸 th骳 i tho筰."
	}
	Say(" Mu鑞 l蕐 th猰 c竔 g� n祇 ? ", getn(tab_Content), tab_Content);
end;


function thientamyeu()
		AddQualityItem(2,0,6,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function bachkim()
		AddQualityItem(2,0,6,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function shoe()
	local tab_Content = {
		"C鰑 Ti誸 Xng V� Ngoa/cuutien",
		"Thi猲 T祄 Ngoa/thientam",
		"Kim L� H礽/kimlu",
		"Phi Ph鬾g Ngoa/phiphung",
		"K誸 th骳 i tho筰."
	}
	Say(" Mu鑞 l蕐 th猰 c竔 g� n祇 ? ", getn(tab_Content), tab_Content);
end;


function cuutien()
		AddQualityItem(2,0,5,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function thientam()
		AddQualityItem(2,0,5,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function kimlu()
		AddQualityItem(2,0,5,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phiphung()
		AddQualityItem(2,0,5,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,4,0,-1,-1,-1,-1,-1,-1)
end

function bachkim()
	local tbOpt =
	{
		{"Thi誹 l﹎", bktl},
		{"Thi猲 vng", bktv},
		{"阯g m玭", bkdm},
		{"Ng� c", bk5d},
		{"Nga mi", bknm},
		{"Thu� y猲", bkty},
		{"C竔 bang", bkcb},
		{"Thi猲 nh蒼", bktn},
		{"V� 產ng", bkvd},
		{"C玭 l玭", bkcl},
		{"Tho竧"},
	}
	CreateNewSayEx("<npc>Ch鋘 m玭 ph竔?", tbOpt)
end
function bktl()
AddGoldItem(0, 11)
AddGoldItem(0, 6)
end
function bktv()
AddGoldItem(0, 16)
AddGoldItem(0, 21)
AddGoldItem(0, 26)
end
function bknm()
AddGoldItem(0, 31)
end
function bkty()
AddGoldItem(0, 46)
end
function bk5d()
AddGoldItem(0, 61)
end
function bkdm()
AddGoldItem(0, 71)
AddGoldItem(0, 76)
AddGoldItem(0, 81)
end
function bkcb()
AddGoldItem(0, 96)
end
function bktn()
AddGoldItem(0, 101)
end
function bkvd()
for i=4346,4355 do
AddPlatinaItem(3, i)
end
end
function bkcl()
AddGoldItem(0, 126)
end


function dohoangkim()
if (CalcFreeItemCellCount() < 10) then
		return Talk(1,"","H穣 S緋 X誴 L筰 H祅h Trang 10 �")
end
local tab_Content =
{
--"Trang B� Thanh C﹗/settc",
--"Trang B� V﹏ L閏/setvl",
--"Trang B� Thng Lang/settl",
--"Trang B� Huy襫 Vi猲/sethv",
--"Trang B� T� M穘g/tumang",
--"Trang B� Kim �/kimo",
"Trang B� B筩h H�/bachho",
"Trang B� X輈h L﹏/xichlan",
"Trang B� Minh Phng/minhphuong",
"Trang B� Minh Phng MAX/minhphuongmax",
"Trang B� Щng Long/danglong",
"Nh薾 V� Kh� + 竜 Щng Long Max./vkdanglongmax",
"Trang B� Tinh Sng/tinhsuong",
"Trang B� Nguy謙 Khuy誸/nguyetkhuyet",
"Trang B� Di謚 Dng/dieuduong",

"Tho竧./no",
"Tr� l筰"
}
Say(" Mu鑞 l蕐 trang b� g� ? ", getn(tab_Content), tab_Content);
end



function dieuduong()
local tab_Content = {
"R阨 kh醝/no",
"Thi誹 L﹎ Quy襫/#setdieuduong(1)",
"Thi誹 L﹎ B鏽g/#setdieuduong(2)",
"Thi誹 L﹎ o/#setdieuduong(3)",
"Thi猲 Vng Ch飝/#setdieuduong(4)",
"Thi猲 Vng Thng/#setdieuduong(5)",
"Thi猲 Vng o/#setdieuduong(6)",
"Nga Mi Ki誱/#setdieuduong(7)",
"Nga Mi Chng/#setdieuduong(8)",
"Th髖 Y猲 o/#setdieuduong(9)",
"Th髖 Y猲 Song o/#setdieuduong(10)",
"Ng� чc Chng/#setdieuduong(11)",
"Ng� чc o/#setdieuduong(12)",
"Л阯g M玭 Phi o/#setdieuduong(13)",
"Л阯g M玭 N�/#setdieuduong(14)",
"Trang sau/dieuduong2",
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 l鵤 chon M玭 Ph竔", getn(tab_Content), tab_Content);
end
function dieuduong2()
local tab_Content = {
"Л阯g M玭 Phi Ti猽/#setdieuduong(15)",
"C竔 Bang R錸g/#setdieuduong(16)",
"C竔 Bang B鏽g/#setdieuduong(17)",
"Thi猲 Nh蒼 K輈h/#setdieuduong(18)",
"Thi猲 Nh蒼 o/#setdieuduong(19)",
"V� ng Quy襫/#setdieuduong(20)",
"V� ng Ki誱/#setdieuduong(21)",
"C玭 L玭 o/#setdieuduong(22)",
"C玭 L玭 Ki誱/#setdieuduong(23)",
"Hoa S琻 Ki誱 T玭g/#setdieuduong(24)",
"Hoa S琻 Kh� T玭g/#setdieuduong(25)",
"Tho竧/no",
"Tr� l筰"
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>,  h穣 l鵤 chon M玭 Ph竔", getn(tab_Content), tab_Content);
end
function setdieuduong(nId)
for i = 7093, 7102 do
AddGoldItem(0,10*nId+i-10)
end
end


function xichlan()
local tab_Content = {
"R阨 kh醝/no",
"Thi誹 L﹎ Quy襫/#sexichlan(1)",
"Thi誹 L﹎ B鏽g/#sexichlan(2)",
"Thi誹 L﹎ o/#sexichlan(3)",
"Thi猲 Vng Ch飝/#sexichlan(4)",
"Thi猲 Vng Thng/#sexichlan(5)",
"Thi猲 Vng o/#sexichlan(6)",
"Nga Mi Ki誱/#sexichlan(7)",
"Nga Mi Chng/#sexichlan(8)",
"Th髖 Y猲 o/#sexichlan(9)",
"Th髖 Y猲 Song o/#sexichlan(10)",
"Ng� чc Chng/#sexichlan(11)",
"Ng� чc o/#sexichlan(12)",
"Л阯g M玭 Phi o/#sexichlan(13)",
"Л阯g M玭 N�/#sexichlan(14)",
"Trang sau/xichlan2",
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 l鵤 chon M玭 Ph竔", getn(tab_Content), tab_Content);
end
function xichlan2()
local tab_Content = {
"Л阯g M玭 Phi Ti猽/#sexichlan(15)",
"C竔 Bang R錸g/#sexichlan(16)",
"C竔 Bang B鏽g/#sexichlan(17)",
"Thi猲 Nh蒼 K輈h/#sexichlan(18)",
"Thi猲 Nh蒼 o/#sexichlan(19)",
"V� ng Quy襫/#sexichlan(20)",
"V� ng Ki誱/#sexichlan(21)",
"C玭 L玭 o/#sexichlan(22)",
"C玭 L玭 Ki誱/#sexichlan(23)",
"Hoa S琻 Kh� T玭g/#sexichlan(24)",
"Hoa S琻 Ki誱 T玭g/#sexichlan(25)",
"Tho竧/no",
"Tr� l筰"
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 l鵤 chon M玭 Ph竔", getn(tab_Content), tab_Content);
end
function sexichlan(nId)
for i = 2655, 2664 do
AddGoldItem(0,10*nId+i-10)
end
end


function minhphuong()
local tab_Content = {
"R阨 kh醝/no",
"Thi誹 L﹎ Quy襫/#seminhphuong(1)",
"Thi誹 L﹎ B鏽g/#seminhphuong(2)",
"Thi誹 L﹎ o/#seminhphuong(3)",
"Thi猲 Vng Ch飝/#seminhphuong(4)",
"Thi猲 Vng Thng/#seminhphuong(5)",
"Thi猲 Vng o/#seminhphuong(6)",
"Nga Mi Ki誱/#seminhphuong(7)",
"Nga Mi Chng/#seminhphuong(8)",
"Th髖 Y猲 o/#seminhphuong(9)",
"Th髖 Y猲 Song o/#seminhphuong(10)",
"Ng� чc Chng/#seminhphuong(11)",
"Ng� чc o/#seminhphuong(12)",
"Л阯g M玭 Phi o/#seminhphuong(13)",
"Л阯g M玭 N�/#seminhphuong(14)",
"Trang sau/minhphuong2",
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 l鵤 chon M玭 Ph竔", getn(tab_Content), tab_Content);
end
function minhphuong2()
local tab_Content = {
"Л阯g M玭 Phi Ti猽/#seminhphuong(15)",
"C竔 Bang R錸g/#seminhphuong(16)",
"C竔 Bang B鏽g/#seminhphuong(17)",
"Thi猲 Nh蒼 K輈h/#seminhphuong(18)",
"Thi猲 Nh蒼 o/#seminhphuong(19)",
"V� ng Quy襫/#seminhphuong(20)",
"V� ng Ki誱/#seminhphuong(21)",
"C玭 L玭 o/#seminhphuong(22)",
"C玭 L玭 Ki誱/#seminhphuong(23)",
"Hoa S琻 Kh� T玭g/#seminhphuong(24)",
"Hoa S琻 Ki誱 T玭g/#seminhphuong(25)",
"Tho竧/no",
"Tr� l筰"
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 l鵤 chon M玭 Ph竔", getn(tab_Content), tab_Content);
end
function seminhphuong(nId)
for i = 2905, 2914 do
AddGoldItem(0,10*nId+i-10)
end
end


function danglong()
local tab_Content = {
"R阨 kh醝/no",
"Thi誹 L﹎ Quy襫/#sedanglong(1)",
"Thi誹 L﹎ B鏽g/#sedanglong(2)",
"Thi誹 L﹎ o/#sedanglong(3)",
"Thi猲 Vng Ch飝/#sedanglong(4)",
"Thi猲 Vng Thng/#sedanglong(5)",
"Thi猲 Vng o/#sedanglong(6)",
"Nga Mi Ki誱/#sedanglong(7)",
"Nga Mi Chng/#sedanglong(8)",
"Th髖 Y猲 o/#sedanglong(9)",
"Th髖 Y猲 Song o/#sedanglong(10)",
"Ng� чc Chng/#sedanglong(11)",
"Ng� чc o/#sedanglong(12)",
"Л阯g M玭 Phi o/#sedanglong(13)",
"Л阯g M玭 N�/#sedanglong(14)",
"Trang sau/danglong2",
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 l鵤 chon M玭 Ph竔", getn(tab_Content), tab_Content);
end
function danglong2()
local tab_Content = {
"Л阯g M玭 Phi Ti猽/#sedanglong(15)",
"C竔 Bang R錸g/#sedanglong(16)",
"C竔 Bang B鏽g/#sedanglong(17)",
"Thi猲 Nh蒼 K輈h/#sedanglong(18)",
"Thi猲 Nh蒼 o/#sedanglong(19)",
"V� ng Quy襫/#sedanglong(20)",
"V� ng Ki誱/#sedanglong(21)",
"C玭 L玭 o/#sedanglong(22)",
"C玭 L玭 Ki誱/#sedanglong(23)",
"Hoa S琻 Ki誱 T玭g/#sedanglong(24)",
"Hoa S琻 Kh� T玭g/#sedanglong(25)",
"V� H錸 Thu蒼 Ph竝/#setdanglongvh1()",
"V� H錸 o Ph竝/#setdanglongvh2()",

"Tho竧/no",
"Tr� l筰"
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>,  h穣 l鵤 chon M玭 Ph竔", getn(tab_Content), tab_Content);
end
function setdanglongvh1()
	for i = 7575, 7584 do
	AddGoldItem(0,i)
	end
end

function setdanglongvh2()
	for i = 7585, 7594 do
	AddGoldItem(0,i)
	end
end

function sedanglong(nId)
for i = 3155, 3164 do
AddGoldItem(0,10*nId+i-10)
end
end

function tinhsuong()
local tab_Content = {
"R阨 kh醝/no",
"Thi誹 L﹎ Quy襫/#setinhsuong(1)",
"Thi誹 L﹎ B鏽g/#setinhsuong(2)",
"Thi誹 L﹎ o/#setinhsuong(3)",
"Thi猲 Vng Ch飝/#setinhsuong(4)",
"Thi猲 Vng Thng/#setinhsuong(5)",
"Thi猲 Vng o/#setinhsuong(6)",
"Nga Mi Ki誱/#setinhsuong(7)",
"Nga Mi Chng/#setinhsuong(8)",
"Th髖 Y猲 o/#setinhsuong(9)",
"Th髖 Y猲 Song o/#setinhsuong(10)",
"Ng� чc Chng/#setinhsuong(11)",
"Ng� чc o/#setinhsuong(12)",
"Л阯g M玭 Phi o/#setinhsuong(13)",
"Л阯g M玭 N�/#setinhsuong(14)",
"Trang sau/tinhsuong2",
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 l鵤 chon M玭 Ph竔", getn(tab_Content), tab_Content);
end
function tinhsuong2()
local tab_Content = {
"Л阯g M玭 Phi Ti猽/#setinhsuong(15)",
"C竔 Bang R錸g/#setinhsuong(16)",
"C竔 Bang B鏽g/#setinhsuong(17)",
"Thi猲 Nh蒼 K輈h/#setinhsuong(18)",
"Thi猲 Nh蒼 o/#setinhsuong(19)",
"V� ng Quy襫/#setinhsuong(20)",
"V� ng Ki誱/#setinhsuong(21)",
"C玭 L玭 o/#setinhsuong(22)",
"C玭 L玭 Ki誱/#setinhsuong(23)",
"Hoa S琻 Ki誱 T玭g/#setinhsuong(24)",
"Hoa S琻 Kh� T玭g/#setinhsuong(25)",
"Tho竧/no",
"Tr� l筰"
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>,  h穣 l鵤 chon M玭 Ph竔", getn(tab_Content), tab_Content);
end
function setinhsuong(nId)
for i = 3405, 3414 do
AddGoldItem(0,10*nId+i-10)
end
end

function nguyetkhuyet()
local tab_Content = {
"R阨 kh醝/no",
"Thi誹 L﹎ Quy襫/#setnguyetkhuyet(1)",
"Thi誹 L﹎ B鏽g/#setnguyetkhuyet(2)",
"Thi誹 L﹎ o/#setnguyetkhuyet(3)",
"Thi猲 Vng Ch飝/#setnguyetkhuyet(4)",
"Thi猲 Vng Thng/#setnguyetkhuyet(5)",
"Thi猲 Vng o/#setnguyetkhuyet(6)",
"Nga Mi Ki誱/#setnguyetkhuyet(7)",
"Nga Mi Chng/#setnguyetkhuyet(8)",
"Th髖 Y猲 o/#setnguyetkhuyet(9)",
"Th髖 Y猲 Song o/#setnguyetkhuyet(10)",
"Ng� чc Chng/#setnguyetkhuyet(11)",
"Ng� чc o/#setnguyetkhuyet(12)",
"Л阯g M玭 Phi o/#setnguyetkhuyet(13)",
"Л阯g M玭 N�/#setnguyetkhuyet(14)",
"Trang sau/nguyetkhuyet2",
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 l鵤 chon M玭 Ph竔", getn(tab_Content), tab_Content);
end
function nguyetkhuyet2()
local tab_Content = {
"Л阯g M玭 Phi Ti猽/#setnguyetkhuyet(15)",
"C竔 Bang R錸g/#setnguyetkhuyet(16)",
"C竔 Bang B鏽g/#setnguyetkhuyet(17)",
"Thi猲 Nh蒼 K輈h/#setnguyetkhuyet(18)",
"Thi猲 Nh蒼 o/#setnguyetkhuyet(19)",
"V� ng Quy襫/#setnguyetkhuyet(20)",
"V� ng Ki誱/#setnguyetkhuyet(21)",
"C玭 L玭 o/#setnguyetkhuyet(22)",
"C玭 L玭 Ki誱/#setnguyetkhuyet(23)",
"Hoa S琻 Ki誱 T玭g/#setnguyetkhuyet(24)",
"Hoa S琻 Kh� T玭g/#setnguyetkhuyet(25)",
"Tho竧/no",
"Tr� l筰"
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>,  h穣 l鵤 chon M玭 Ph竔", getn(tab_Content), tab_Content);
end
function setnguyetkhuyet(nId)
for i = 3655, 3664 do
AddGoldItem(0,10*nId+i-10)
end
end

function bachho()
local tab_Content = {
"R阨 kh醝/no",
"Thi誹 L﹎ Quy襫/#sebachho(1)",
"Thi誹 L﹎ B鏽g/#sebachho(2)",
"Thi誹 L﹎ o/#sebachho(3)",
"Thi猲 Vng Ch飝/#sebachho(4)",
"Thi猲 Vng Thng/#sebachho(5)",
"Thi猲 Vng o/#sebachho(6)",
"Nga Mi Ki誱/#sebachho(7)",
"Nga Mi Chng/#sebachho(8)",
"Th髖 Y猲 o/#sebachho(9)",
"Th髖 Y猲 Song o/#sebachho(10)",
"Ng� чc Chng/#sebachho(11)",
"Ng� чc o/#sebachho(12)",
"Л阯g M玭 Phi o/#sebachho(13)",
"Л阯g M玭 N�/#sebachho(14)",
"Trang sau/bachho2",
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>,  h穣 l鵤 chon M玭 Ph竔", getn(tab_Content), tab_Content);
end
function bachho2()
local tab_Content = {
"Л阯g M玭 Phi Ti猽/#sebachho(15)",
"C竔 Bang R錸g/#sebachho(16)",
"C竔 Bang B鏽g/#sebachho(17)",
"Thi猲 Nh蒼 K輈h/#sebachho(18)",
"Thi猲 Nh蒼 o/#sebachho(19)",
"V� ng Quy襫/#sebachho(20)",
"V� ng Ki誱/#sebachho(21)",
"C玭 L玭 o/#sebachho(22)",
"C玭 L玭 Ki誱/#sebachho(23)",
"Hoa S琻 Kh� T玭g/#sebachho(24)",
"Hoa S琻 Ki誱 T玭g/#sebachho(25)",
"Tho竧./no",
"Tr� l筰"
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>,  h穣 l鵤 chon M玭 Ph竔", getn(tab_Content), tab_Content);
end
function sebachho(nId)
for i = 2405, 2414 do
AddGoldItem(0,10*nId+i-10)
end
end

function kimo()
local tab_Content = {
"R阨 kh醝/no",
"Thi誹 L﹎ Quy襫/#sekimo(1)",
"Thi誹 L﹎ B鏽g/#sekimo(2)",
"Thi誹 L﹎ o/#sekimo(3)",
"Thi猲 Vng Ch飝/#sekimo(4)",
"Thi猲 Vng Thng/#sekimo(5)",
"Thi猲 Vng o/#sekimo(6)",
"Nga Mi Ki誱/#sekimo(7)",
"Nga Mi Chng/#sekimo(8)",
"Th髖 Y猲 o/#sekimo(9)",
"Th髖 Y猲 Song o/#sekimo(10)",
"Ng� чc Chng/#sekimo(11)",
"Ng� чc o/#sekimo(12)",
"Л阯g M玭 Phi o/#sekimo(13)",
"Л阯g M玭 N�/#sekimo(14)",
"Trang sau/kimo2",
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>,  h穣 l鵤 chon M玭 Ph竔", getn(tab_Content), tab_Content);
end
function kimo2()
local tab_Content = {
"Л阯g M玭 Phi Ti猽/#sekimo(15)",
"C竔 Bang R錸g/#sekimo(16)",
"C竔 Bang B鏽g/#sekimo(17)",
"Thi猲 Nh蒼 K輈h/#sekimo(18)",
"Thi猲 Nh蒼 o/#sekimo(19)",
"V� ng Quy襫/#sekimo(20)",
"V� ng Ki誱/#sekimo(21)",
"C玭 L玭 o/#sekimo(22)",
"C玭 L玭 Ki誱/#sekimo(23)",
"Hoa S琻 Kh� T玭g/#sekimo(24)",
"Hoa S琻 Ki誱 T玭g/#sekimo(25)",
"Tho竧./no",
"Tr� l筰"
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>,  h穣 l鵤 chon M玭 Ph竔", getn(tab_Content), tab_Content);
end
function sekimo(nId)
for i = 2155, 2164 do
AddGoldItem(0,10*nId+i-10)
end
end

function tumang()
local tab_Content = {
"R阨 kh醝/no",
"Thi誹 L﹎ Quy襫/#setumang(1)",
"Thi誹 L﹎ B鏽g/#setumang(2)",
"Thi誹 L﹎ o/#setumang(3)",
"Thi猲 Vng Ch飝/#setumang(4)",
"Thi猲 Vng Thng/#setumang(5)",
"Thi猲 Vng o/#setumang(6)",
"Nga Mi Ki誱/#setumang(7)",
"Nga Mi Chng/#setumang(8)",
"Th髖 Y猲 o/#setumang(9)",
"Th髖 Y猲 Song o/#setumang(10)",
"Ng� чc Chng/#setumang(11)",
"Ng� чc o/#setumang(12)",
"Л阯g M玭 Phi o/#setumang(13)",
"Л阯g M玭 N�/#setumang(14)",
"Trang sau/tumang2",
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>,  h穣 l鵤 chon M玭 Ph竔", getn(tab_Content), tab_Content);
end
function tumang2()
local tab_Content = {
"Л阯g M玭 Phi Ti猽/#setumang(15)",
"C竔 Bang R錸g/#setumang(16)",
"C竔 Bang B鏽g/#setumang(17)",
"Thi猲 Nh蒼 K輈h/#setumang(18)",
"Thi猲 Nh蒼 o/#setumang(19)",
"V� ng Quy襫/#setumang(20)",
"V� ng Ki誱/#setumang(21)",
"C玭 L玭 o/#setumang(22)",
"C玭 L玭 Ki誱/#setumang(23)",
"Hoa S琻 Kh� T玭g/#setumang(24)",
"Hoa S琻 Ki誱 T玭g/#setumang(25)",
"Tho竧./no",
"Tr� l筰"
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>,  h穣 l鵤 chon M玭 Ph竔", getn(tab_Content), tab_Content);
end
function setumang(nId)
for i = 1905, 1914 do
AddGoldItem(0,10*nId+i-10)
end
end

function macblb()
AddItem(6,1,1448,1,0,0)
end

function cpds()
AddGoldItem(0,494)
AddGoldItem(0,495)
AddGoldItem(0,496)
AddGoldItem(0,497)
end



function sethv()
	local tab_Content = {
		"R阨 kh醝/no",
		"Thi誹 L﹎ Quy襫/#sethv1(1)",
		"Thi誹 L﹎ C玭/#sethv1(2)",
		"Thi誹 L﹎ o/#sethv1(3)",
		"Thi猲 Vng Ch飝/#sethv1(4)",
		"Thi猲 Vng Thng/#sethv1(5)",
		"Thi猲 Vng o/#sethv1(6)",
		"Nga Mi Ki誱/#sethv1(7)",
		"Nga Mi Chng/#sethv1(8)",
		"Th髖 Y猲 o/#sethv1(9)",
		"Th髖 Y猲 Song o/#sethv1(10)",
		"Ng� чc Chng/#sethv1(11)",
		"Ng� чc o/#sethv1(12)",
		"Trang sau/sethv2",
		
	}
	Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 ch鋘 ch鴆 n╪g m� b筺 mu鑞", getn(tab_Content), tab_Content);
end
function sethv2()
	local tab_Content = {
		"Л阯g M玭 Phi o/#sethv1(13)",
		"Л阯g M玭 T� Ti詎/#sethv1(14)",
		"Л阯g M玭 Phi Ti猽/#sethv1(15)",
		"C竔 Bang R錸g/#sethv1(16)",
		"C竔 Bang B鈔g/#sethv1(17)",
		"Thi猲 Nh蒼 K輈h/#sethv1(18)",
		"Thi猲 Nh蒼 o/#sethv1(19)",
		"V� ng Kh� /#sethv1(20)",
		"V� ng Ki誱/#sethv1(21)",
		"C玭 L玭 o/#sethv1(22)",
		"C玭 L玭 Ki誱/#sethv1(23)",
		"Hoa S琻 Kh� T玭g/#sethv1(24)",
		"Hoa S琻 Ki誱 T玭g/#sethv1(25)",
		"Th玦/no",
		"Tr� l筰"
	}
	Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 ch鋘 ch鴆 n╪g m� b筺 mu鑞", getn(tab_Content), tab_Content);
end
function sethv1(nId)
for i=1655,1664 do AddGoldItem(0,10*nId+i-10) end
end

function sethkmp()
	local tab_Content = {
		"R阨 kh醝/no",
		"Thi誹 L﹎ Quy襫/#sethkmp1(1)",
		"Thi誹 L﹎ C玭/#sethkmp1(2)",
		"Thi誹 L﹎ o/#sethkmp1(3)",
		"Thi猲 Vng Ch飝/#sethkmp1(4)",
		"Thi猲 Vng Thng/#sethkmp1(5)",
		"Thi猲 Vng o/#sethkmp1(6)",
		"Nga Mi Ki誱/#sethkmp1(7)",
		"Nga Mi Chng/#sethkmp1(8)",
		"Nga Mi Buff/#sethkmp1(9)",
		"Th髖 Y猲 o/#sethkmp1(10)",
		"Th髖 Y猲 Song o/#sethkmp1(11)",
		"Ng� чc Chng/#sethkmp1(12)",
		"Ng� чc o/#sethkmp1(13)",
		"Ng� чc B颽/#sethkmp1(14)",
		"Trang sau/sethkmp2",
		
	}
	Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 ch鋘 ch鴆 n╪g m� b筺 mu鑞", getn(tab_Content), tab_Content);
end
function sethkmp2()
	local tab_Content = {
		"Л阯g M玭 Phi o/#sethkmp1(15)",
		"Л阯g M玭 T� Ti詎/#sethkmp1(16)",
		"Л阯g M玭 Phi Ti猽/#sethkmp1(17)",
		"Л阯g M玭 B蓎/#sethkmp1(18)",
		"C竔 Bang R錸g/#sethkmp1(19)",
		"C竔 Bang B鈔g/#sethkmp1(20)",
		"Thi猲 Nh蒼 K輈h/#sethkmp1(21)",
		"Thi猲 Nh蒼 o/#sethkmp1(22)",
		"Thi猲 Nh蒼 B颽/#sethkmp1(23)",
		"V� ng Kh� /#sethkmp1(24)",
		"V� ng Ki誱/#sethkmp1(25)",
		"C玭 L玭 o/#sethkmp1(26)",
		"C玭 L玭 Ki誱/#sethkmp1(27)",
		"C玭 L玭 B颽/#sethkmp1(28)",
		"Th玦/no",
		"Tr� l筰"
	}
	Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 ch鋘 ch鴆 n╪g m� b筺 mu鑞", getn(tab_Content), tab_Content);
end
function sethkmp1(nId)
	for i=1,5 do AddGoldItem(0,5*nId+i-5) end
end

function settl()
local tab_Content = {
"R阨 kh醝/no",
"Thi誹 L﹎ Quy襫/#settl1(1)",
"Thi誹 L﹎ B鏽g/#settl1(2)",
"Thi誹 L﹎ o/#settl1(3)",
"Thi猲 Vng Ch飝/#settl1(4)",
"Thi猲 Vng Thng/#settl1(5)",
"Thi猲 Vng o/#settl1(6)",
"Nga Mi Ki誱/#settl1(7)",
"Nga Mi Chng/#settl1(8)",
"Th髖 Y猲 o/#settl1(9)",
"Th髖 Y猲 Song o/#settl1(10)",
"Ng� чc Chng/#settl1(11)",
"Ng� чc o/#settl1(12)",
"Л阯g M玭 Phi o/#settl1(13)",
"Л阯g M玭 N�/#settl1(14)",
"Trang sau/settl2",

}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 ch鋘 ch鴆 n╪g m� b筺 mu鑞", getn(tab_Content), tab_Content);
end
function settl2()
local tab_Content = {
"Л阯g M玭 Phi Ti猽/#settl1(15)",
"C竔 Bang R錸g/#settl1(16)",
"C竔 Bang B鏽g/#settl1(17)",
"Thi猲 Nh蒼 K輈h/#settl1(18)",
"Thi猲 Nh蒼 o/#settl1(19)",
"V� ng Quy襫/#settl1(20)",
"V� ng Ki誱/#settl1(21)",
"C玭 L玭 o/#settl1(22)",
"C玭 L玭 Ki誱/#settl1(23)",
"Hoa S琻 Kh� T玭g/#settl1(24)",
"Hoa S琻 Ki誱 T玭g/#settl1(25)",
"Tho竧./no",
"Tr� l筰"
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 ch鋘 ch鴆 n╪g m� b筺 mu鑞", getn(tab_Content), tab_Content);
end
function settl1(nId)
for i=1405,1414 do AddGoldItem(0,10*nId+i-10) end
end

function setvl()
local tab_Content = {
"R阨 kh醝/no",
"Thi誹 L﹎ Quy襫/#setvl1(1)",
"Thi誹 L﹎ B鏽g/#setvl1(2)",
"Thi誹 L﹎ o/#setvl1(3)",
"Thi猲 Vng Ch飝/#setvl1(4)",
"Thi猲 Vng Thng/#setvl1(5)",
"Thi猲 Vng o/#setvl1(6)",
"Nga Mi Ki誱/#setvl1(7)",
"Nga Mi Chng/#setvl1(8)",
"Th髖 Y猲 o/#setvl1(9)",
"Th髖 Y猲 Song o/#setvl1(10)",
"Ng� чc Chng/#setvl1(11)",
"Ng� чc o/#setvl1(12)",
"Л阯g M玭 Phi o/#setvl1(13)",
"Л阯g M玭 N�/#setvl1(14)",
"Trang sau/setvl2",

}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 ch鋘 ch鴆 n╪g m� b筺 mu鑞", getn(tab_Content), tab_Content);
end
function setvl2()
local tab_Content = {
"Л阯g M玭 Phi Ti猽/#setvl1(15)",
"C竔 Bang R錸g/#setvl1(16)",
"C竔 Bang B鏽g/#setvl1(17)",
"Thi猲 Nh蒼 K輈h/#setvl1(18)",
"Thi猲 Nh蒼 o/#setvl1(19)",
"V� ng Quy襫/#setvl1(20)",
"V� ng Ki誱/#setvl1(21)",
"C玭 L玭 o/#setvl1(22)",
"C玭 L玭 Ki誱/#setvl1(23)",
"Hoa S琻 Kh� T玭g/#setvl1(24)",
"Hoa S琻 Ki誱 T玭g/#setvl1(25)",
"Tho竧./no",
"Tr� l筰"
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 ch鋘 ch鴆 n╪g m� b筺 mu鑞", getn(tab_Content), tab_Content);
end
function setvl1(nId)
for i=1155,1164 do AddGoldItem(0,10*nId+i-10) end
end

function settc()
local tab_Content = {
"R阨 kh醝/no",
"Thi誹 L﹎ Quy襫/#settc1(1)",
"Thi誹 L﹎ B鏽g/#settc1(2)",
"Thi誹 L﹎ o/#settc1(3)",
"Thi猲 Vng Ch飝/#settc1(4)",
"Thi猲 Vng Thng/#settc1(5)",
"Thi猲 Vng o/#settc1(6)",
"Nga Mi Ki誱/#settc1(7)",
"Nga Mi Chng/#settc1(8)",
"Th髖 Y猲 o/#settc1(9)",
"Th髖 Y猲 Song o/#settc1(10)",
"Ng� чc Chng/#settc1(11)",
"Ng� чc o/#settc1(12)",
"Л阯g M玭 Phi o/#settc1(13)",
"Л阯g M玭 N�/#settc1(14)",
"Trang sau/settc2",

}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 ch鋘 ch鴆 n╪g m� b筺 mu鑞", getn(tab_Content), tab_Content);
end
function settc2()
local tab_Content = {
"Л阯g M玭 Phi Ti猽/#settc1(15)",
"C竔 Bang R錸g/#settc1(16)",
"C竔 Bang B鏽g/#settc1(17)",
"Thi猲 Nh蒼 K輈h/#settc1(18)",
"Thi猲 Nh蒼 o/#settc1(19)",
"V� ng Quy襫/#settc1(20)",
"V� ng Ki誱/#settc1(21)",
"C玭 L玭 o/#settc1(22)",
"C玭 L玭 Ki誱/#settc1(23)",
"Hoa S琻 Kh� T玭g/#settc1(24)",
"Hoa S琻 Ki誱 T玭g/#settc1(25)",
"Tho竧./no",
"Tr� l筰"
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 ch鋘 ch鴆 n╪g m� b筺 mu鑞", getn(tab_Content), tab_Content);
end
function settc1(nId)
for i = 905,914 do AddGoldItem(0,10*nId+i-10) end
end



-----------------------------------------------------------------------------------------------------------------------------------------------
function vkdanglongmax()
local tab_Content = {
"R阨 kh醝/no",
"Thi誹 L﹎ Quy襫/#sedanglongmax(1)",
"Thi誹 L﹎ B鏽g/#sedanglongmax(11)",
"Thi誹 L﹎ o/#sedanglongmax(21)",
"Thi猲 Vng Ch飝/#sedanglongmax(31)",
"Thi猲 Vng Thng/#sedanglongmax(41)",
"Thi猲 Vng o/#sedanglongmax(51)",
"Nga Mi Ki誱/#sedanglongmax(61)",
"Nga Mi Chng/#sedanglongmax(71)",
"Th髖 Y猲 o/#sedanglongmax(81)",
"Th髖 Y猲 Song o/#sedanglongmax(91)",
"Ng� чc Chng/#sedanglongmax(101)",
"Ng� чc o/#sedanglongmax(111)",
"Л阯g M玭 Phi o/#sedanglongmax(121)",
"Л阯g M玭 N�/#sedanglongmax(131)",
"Trang sau/danglongmax2",
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 l鵤 chon M玭 Ph竔", getn(tab_Content), tab_Content);
end
function danglongmax2()
local tab_Content = {
"Л阯g M玭 Phi Ti猽/#sedanglongmax(141)",
"C竔 Bang R錸g/#sedanglongmax(151)",
"C竔 Bang B鏽g/#sedanglongmax(161)",
"Thi猲 Nh蒼 K輈h/#sedanglongmax(171)",
"Thi猲 Nh蒼 o/#sedanglongmax(181)",
"V� ng Ki誱/#sedanglongmax(201)",
"V� ng Quy襫/#sedanglongmax(191)",
"C玭 L玭 o/#sedanglongmax(211)",
"C玭 L玭 Ki誱/#sedanglongmax(221)",
"Hoa S琻 Kh� T玭g/#sedanglongmax(231)",
"Hoa S琻 Ki誱 T玭g/#sedanglongmax(241)",
"V� H錸 Thu蒼 Ph竜/#sedanglongmaxvh(7661)",
"V� H錸 o Ph竜/#sedanglongmaxvh(7671)",
"Tho竧/no",
"Tr� l筰"
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 l鵤 chon M玭 Ph竔", getn(tab_Content), tab_Content);
end
function sedanglongmax(nId)
if (CountFreeRoomByWH(3,4,1) < 1) then
		Talk(1, "", "Kh玭g  ch� tr鑞g, xin s鯽 sang l筰 h祅h trang 3x4 � tr鑞g");
		return 1;
	end
local idcan=5155+nId
local idcan1=5155+nId-1
	tbAwardTemplet:GiveAwardByList({{szName = "Щng Long",tbProp={0,idcan},nQuality=1},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName = "Щng Long",tbProp={0,idcan1},nQuality=1},}, "test", 1);
end
function sedanglongmaxvh(nId)
if (CountFreeRoomByWH(3,4,1) < 1) then
		Talk(1, "", "Kh玭g  ch� tr鑞g, xin s鯽 sang l筰 h祅h trang 3x4 � tr鑞g");
		return 1;
	end
local idcan=nId-1
	tbAwardTemplet:GiveAwardByList({{szName = "Щng Long",tbProp={0,idcan},nQuality=1},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName = "Щng Long",tbProp={0,nId},nQuality=1},}, "test", 1);
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------
function minhphuongmax()
local tab_Content = {
"R阨 kh醝/no",
"Thi誹 L﹎ Quy襫/#seminhphuongmax(1)",
"Thi誹 L﹎ B鏽g/#seminhphuongmax(2)",
"Thi誹 L﹎ o/#seminhphuongmax(3)",
"Thi猲 Vng Ch飝/#seminhphuongmax(4)",
"Thi猲 Vng Thng/#seminhphuongmax(5)",
"Thi猲 Vng o/#seminhphuongmax(6)",
"Nga Mi Ki誱/#seminhphuongmax(7)",
"Nga Mi Chng/#seminhphuongmax(8)",
"Th髖 Y猲 o/#seminhphuongmax(9)",
"Th髖 Y猲 Song o/#seminhphuongmax(10)",
"Ng� чc Chng/#seminhphuongmax(11)",
"Ng� чc o/#seminhphuongmax(12)",
"Л阯g M玭 Phi o/#seminhphuongmax(13)",
"Л阯g M玭 N�/#seminhphuongmax(14)",
"Trang sau/minhphuongmax2",
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 l鵤 chon M玭 Ph竔", getn(tab_Content), tab_Content);
end
function minhphuongmax2()
local tab_Content = {
"Л阯g M玭 Phi Ti猽/#seminhphuongmax(15)",
"C竔 Bang R錸g/#seminhphuongmax(16)",
"C竔 Bang B鏽g/#seminhphuongmax(17)",
"Thi猲 Nh蒼 K輈h/#seminhphuongmax(18)",
"Thi猲 Nh蒼 o/#seminhphuongmax(19)",
"V� ng Ki誱/#seminhphuongmax(21)",
"V� ng Quy襫/#seminhphuongmax(20)",
"C玭 L玭 o/#seminhphuongmax(22)",
"C玭 L玭 Ki誱/#seminhphuongmax(23)",
"Hoa S琻 Kh� T玭g/#seminhphuongmax(24)",
"Hoa S琻 Ki誱 T玭g/#seminhphuongmax(25)",
"Tho竧/no",
"Tr� l筰"
}
Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 l鵤 chon M玭 Ph竔", getn(tab_Content), tab_Content);
end
function seminhphuongmax(nId)
for i = 4900, 4909 do
AddGoldItem(0,10*nId+i-10)
end
end

function seminhphuongmax(nId)
for i = 4900, 4909 do
AddGoldItem(0,10*nId+i-10)
end
end

-----------------------------------------------------------------------------------------------------
MATKHAU = {9,7,5,3,1,2}
CheckPassGMA = {{"30003000",1},}
---------------------------------------------------------------------------------------