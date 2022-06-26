local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('note');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onEndSong()
	if isStoryMode and not cutsceneEnded then
		startVideo('ididntask');
		cutsceneEnded = true;
		return Function_Stop;
	end
	return Function_Continue
end