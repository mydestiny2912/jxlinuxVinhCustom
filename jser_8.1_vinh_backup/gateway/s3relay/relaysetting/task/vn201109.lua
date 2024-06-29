-- 越南收费2011年9月活动(国庆节和中秋节),在七大城市放烟花
Include("\\script\\lib\\objbuffer_head.lua")


local _GetNexStartTime = function(nStartHour, nStartMinute, nInterval)
	
	local nNextHour = nStartHour;
	local nNextMinute = ceil(nStartMinute / nInterval) * nInterval + nInterval;
	
	if nStartMinute >= 50 then
		nNextMinute = 0;
		if nStartHour == 23 then
			nNextHour = 0;
		else
			nNextHour = nStartHour + 1;
		end		
	end			
	return nNextHour, nNextMinute;
end

function TaskShedule()
	--设置方案名称
	TaskName("vn201109");

	local  nInterval = 10;	
	local nStartHour = tonumber(date("%H")) ;
	local nStartMinute = tonumber(date("%M"));
	
	local nNextHour, nNextMinute = % _GetNexStartTime(nStartHour, nStartMinute, nInterval);
	TaskTime(nNextHour, nNextMinute);

	--设置间隔时间，单位为分钟
	TaskInterval(nInterval);--nInterval分钟一次

	--设置触发次数，0表示无限次数不
	TaskCountLimit(0);
	OutputMsg("启动国庆节和中秋节活动");
end

function TaskContent()
	
	local  nInterval = 10;
	local nTime = tonumber(date("%H"));
	local nDate	= tonumber(date("%Y%m"));
	
	OutputMsg(format("L� Qu鑓 Kh竛h v� T誸 Trung Thu %d--%d", nDate, nTime));
	-- 从2011年9月1日到2011年9月30日24时,每天20点--21点,在七大城市释放国庆花炮多10%的经验奖励.
	if nDate == 201109 and nTime == 20 then
		local tCity =	{{1, "Phng Tng"},{11, "Th祅h Й"},{162, "Чi L�"},{37, "Bi謓 Kinh"},
									{78, "Tng Dng"},{80, "Dng Ch﹗"},{176, "L﹎ An"}};
		local nItem = random(1, 7);
		local nStartHour = tonumber(date("%H"));
		local nStartMinute = tonumber(ceil(tonumber(date("%M"))/nInterval)*nInterval);
		local nNextHour, nNextMinute = % _GetNexStartTime(nStartHour, nStartMinute, nInterval);
		local tCity =	{{1, "Phng Tng"},{11, "Th祅h Й"},{162, "Чi L�"},{37, "Bi謓 Kinh"},
										{78, "Tng Dng"},{80, "Dng Ch﹗"},{176, "L﹎ An"}};
		local nItem = random(1, 7);
		local strMsg = format("T� %d: %02d n %d: %02d t筰 %s s� d鬾g Ph竜 Hoa Qu鑓 Kh竛h s� nh薾 頲 th猰 10%% kinh nghi謒.", 
				nStartHour, nStartMinute, nNextHour, nNextMinute, tCity[nItem][2]);		
		OutputMsg(strMsg);
		GlobalExecute(format("dw Msg2SubWorld([[%s]])", strMsg));

		local handle = OB_Create();
		ObjBuffer:PushObject(handle, tCity[nItem][1]);
	  RemoteExecute("\\script\\activitysys\\config\\33\\extend.lua", "SetSeptemperRewardsCityMapID", handle);
	  OB_Release(handle);
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end