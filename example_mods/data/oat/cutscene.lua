local cutsceneEnded = false
function onEndSong()
	if isStoryMode and not cutsceneEnded then
		startVideo('uhuhuh');
		cutsceneEnded = true;
		return Function_Stop;
	end
	return Function_Continue
end