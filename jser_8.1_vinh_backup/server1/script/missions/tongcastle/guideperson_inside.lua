--白虎节堂接引人（传出用）

function main()
	local tbSel = {
		"Ta mu鑞 r阨 kh醝 Th祅h B秓 Bang H閕" .. "/OnLeave",
		"Ta xem th�" .. "/OnCancel",
	};
	Say("Чi hi謕! Ngi mu鑞 r阨 kh醝 y sao?", getn(tbSel), tbSel);
end

function OnLeave()
	UseTownPortal();
end

function OnCancel()
end

