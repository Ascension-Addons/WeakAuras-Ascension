-- Fix FrameStrata of ChatFrame
for i = 1, NUM_CHAT_WINDOWS do
	local chatFrame = _G["ChatFrame" .. i]
	if chatFrame and type(chatFrame.GetFrameStrata) == "function" and type(chatFrame.SetFrameStrata) == "function" then
		if chatFrame:GetFrameStrata() == "BACKGROUND" then
			chatFrame:SetFrameStrata("MEDIUM")
		end
	end
end
