
function add466()
		level = random(1,4);
		AddSkillState(466, level, 0, 1080 )	--玩家获得受伤动作减少
		Msg2Player("<#> B筺 nh薾 頲 <color=0xB5FDD7> 1 ph髏 gi秏 th� thng"..(level*10).."<#> %")	
end

function add467()
		level = random(1,4);
		AddSkillState(467, level, 0, 1080 )	--玩家获得中毒时间减少
		Msg2Player("<#> B筺 nh薾 頲 <color=0xB5FDD7> 1 ph髏 gi秏 th阨 gian tr髇g c:"..(level*10).."<#> %")	
end

Tab={add466,add467}

function IsPickable( nItemIndex, nPlayerIndex )
	return 1;
end

function PickUp( nItemIndex, nPlayerIndex )
	if( IsMyItem( nItemIndex ) ) then
		i = random(getn(Tab))
		Tab[i]();
		return 0;	-- 删除物品
	end
end

