local cutsceneEnded = false
function onEndSong()
	if isStoryMode and not cutsceneEnded then
		if getProperty('ratingPercent') > 1 then
			startVideo('greatjob');
			allowCountdown = true;
			return Function_Stop;
		end
	end
	return Function_Continue;
end
