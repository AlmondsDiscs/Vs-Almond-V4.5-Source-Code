local cutsceneEnded = false
function onEndSong()
	if isStoryMode and not cutsceneEnded then
		if getProperty('ratingPercent', 0.8) then
			startVideo('youtried');
			cutsceneEnded = true;
			return Function_Stop;
		end
	end
	return Function_Continue
end